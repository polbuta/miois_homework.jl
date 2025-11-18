function arraysum(ar::AbstractVector{<:Number})::Float64
    sum = 0;
    for i in number
        sum+=i;
    end
    return sum;
end


function mul35sum(N::Integer)::Int64
    sum = Int64(0);
    for i in 1:N-1
        if i%3==0 && i%5==0
            sum+=i;
        end
    end
    return sum;
end
