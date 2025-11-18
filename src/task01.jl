export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    r=[];
    while a>0
        pushfirst!(r,a%10);
        a=a%10;
    end
    return r;
end

function touppercase(str_)
    t=[];
    for ind in str_
        if (ind>='a') && (ind<='z')
            push!(t,ind+('A'-'a'));
        else
            push!(t, ind);
        end
    end    
    return t;
end

function firstnorm(vec_::AbstractVector{<:Number})
    tot=0;
    for i in 1:length(vec_)
        tot+=abs(x[i]);
    end
    return tot;
end

function secondnorm(vec_::AbstractVector{<:Number})
    tot_sq=0;
    for i in 1:length(vec_)
        tot_sq=vec_[i]^2;
    end
    return tot_sq;
end

function infnorm(vec_::AbstractVector{<:Number})
    max_zn=0;
    for i in 1:length(vec_)
        zn=abs(vec_[i]);
        if zn>max_zn
            max_zn=zn;
        end
    end
    return max_zn;
end

function firstnorm(mat_::AbstractMatrix{<:Number})
    n = size(mat_);
    max_s=0;
    for j in 1:n
        s=0;
        for i in 1:n
            s+=abs(mat_[i, j]);
        end
        if s>max_s
            max_s = s;
        end
    end
    return max_s;
end

function infnorm(mat_::AbstractMatrix{<:Number})
    n = size(mat_);
    max_rs=0;
    for i in 1:n
        rs=0;
        for j in 1:n
            rs+=abs(mat_[i, j]);
        end
        if rs>max_rs
            max_rs=rs;
        end
    end
    return max_rs;
end

function isleap(year)
    if year%4==0
        return true;
    elseif year%100==0
        return false;
    elseif year%400==0
        return true;      
    end
    return false;
end

function chesscolor(cell1, cell2)
    p1=cell1[1]-'a'+1;
    p2=cell1[2];
    p3=cell2[1]-'a'+1;
    p4=cell2[2];
    if (p1+p2)%2==(p3+p4)%2
        return true;
    else
        return false;
    end    
end
