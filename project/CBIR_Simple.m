function [rr,r, rs, ormax,asd]= CBIR_Simple(dirname,nlevels,nsubs,color)

% Input:
%   dirname: directory that contains all images, e.g. '../VisTex/sub128'
%   nlevels: number of wavelet pyramid levels (default 3)
%   nsubs: Number of sub-images per class. nsubs=16, default for VisTex Dataset.

% Output:
%   rr: Rank relevant images using Euclidean-liked distance.
%	r:	overall recognition rate
%	rs:	(optional) average recognition rate for each texture class
%	or:	(optional) operating recognition rate in percentage,
%		according to the number of retrieved images considered


% Wavelet-based feature extraction from ALL images.

    [asd] = wavefeat_asd_INDEX(dirname,nlevels,color);
 

% RANKED Rank relevant images using Euclidean-liked distance
rr = ranked(asd, nsubs);

% EVALIR Evaluate Image Retrieval (IR) performance
[r, rs, ormax] = evalir(rr);
end
