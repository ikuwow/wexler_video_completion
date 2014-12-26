% completion.m

% implementation plan
%{
* input and output
* search appropriate patch and apply, loop.
* alpha
* update with ML
* process multiple scale and propagate
* patchmatch
%}


function output = completion(input,mask)

%% pseudo code
%{
for scales, corsest to finer (input and database)
    while not converge 
        for all p in H
            let all windows W containing p
            find best matching V of patch with p
            let ci be the appropriate colors
            set weight w
            S^(t+1) (p) <= ML(c,w) using eq (4) （mean shift algorithm）
        end 
        t = t+1; (t is parameter of EM algorithm)
    endwhile

    propagate to the next level (used in ML step)

end 

%}

output = input;

end
