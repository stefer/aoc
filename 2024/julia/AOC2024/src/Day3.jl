module Day3

export run

using DataStructures:Stack

mutable struct Context
    const input::String
    position::Int
    stack::Stack{Int}
end

function run(input::String)
    context = Context(input, 1, Stack{Int}())
    code!(context)
    return sum(context.stack)
end

function code!(ctx::Context)
    while !at_end(ctx)
        gibberish!(ctx)
        call!(ctx)
    end
end

function gibberish!(ctx::Context)
    while !at_end(ctx) && peek(ctx) != 'm'
        next!(ctx)
    end
end

function call!(ctx::Context)
    if accept!(ctx, "mul") && accept!(ctx, "(")
        if number!(ctx)
            num1 = pop!(ctx.stack)
            if accept!(ctx, ",") && number!(ctx) 
                num2 = pop!(ctx.stack)
                if accept!(ctx, ")")
                    push!(ctx.stack, num1 * num2)
                end
            end
        end
    end
end

function number!(ctx::Context)
    digits = ""
    while !at_end(ctx) && isdigit(peek(ctx))
        digits = digits * next!(ctx)
    end
    if length(digits) > 0 && length(digits) <= 3
        push!(ctx.stack, parse(Int, digits))
        return true
    end
    return false
end

function at_end(ctx::Context)
    return ctx.position > length(ctx.input)
end

function peek(ctx::Context)
    return ctx.input[ctx.position]
end

function next!(ctx::Context)
    if !at_end(ctx)
        ctx.position += 1
        return ctx.input[ctx.position-1]
    end
    return ""
end

function accept!(ctx::Context, token::String)
    if !at_end(ctx) && ctx.input[ctx.position:ctx.position+length(token)-1] == token
        ctx.position += length(token)
        return true
    end
    return false
end

end