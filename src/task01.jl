export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    r=[]
    while a>0
        pushfirst!(r,a%10)
        a=a%10    
    return r
end

function touppercase(str_)
    t=[]
    for index in str_
            if (index>='a') && (index<='z')
                push!(t,index=index+('A'-'a'))
            else
                push!(t, index)
    return t;
end

function firstnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function secondnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function infnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function firstnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function infnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function isleap(year)
    return false;
end

function chesscolor(cell1, cell2)
    return false;
end
