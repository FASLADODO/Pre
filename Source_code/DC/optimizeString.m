function str=optimizeString(str)
% replace some code snippets to shorten 

oldstrings={ ...
    '(cx + 2*bx*t + 3*ax*t^2)', ...
    '(cy + 2*by*t + 3*ay*t^2)', ...
    '(2*bx + 6*ax*t)',  '(2*by + 6*ay*t)', ...
    't^3', 't^2', ...
    '(curt - t1)','(curt - t2)','(curt - t3)','(curt - t4)','(curt - t5)','(curt - t6)', ...
    '(curt-t1)','(curt-t2)','(curt-t3)','(curt-t4)','(curt-t5)','(curt-t6)', ...
    '(t1 - t4)','(t2 - t4)','(t2 - t5)','(t3 - t5)','(t3 - t4)','(t3 - t6)', ...
    '(t1-t4)','(t2-t4)','(t2-t5)','(t3-t5)','(t3-t4)','(t3-t6)', ...
    '(c2x*cmt1 - c1x*cmt4)','(c2y*cmt1 - c1y*cmt4)',...
    '  t0 = ', ...
    '(nf*nf)','(k*k)','pow(x0-x1,2.0)','pow(y0-y1,2.0)','1.0/nfsq','1.0/ksq',...
    };

newstrings={ ...
    'px_', ...
    'py_', ...
    'px__', 'py__', ...
    'tcu', 'tsq', ...
    'cmt1','cmt2','cmt3','cmt4','cmt5','cmt6', ...
    'cmt1','cmt2','cmt3','cmt4','cmt5','cmt6', ...
    't14','t24','t25','t35','t34','t36',...
    't14','t24','t25','t35','t34','t36',...
    'c2x_cmt1_c1x_cmt4','c2y_cmt1_c1y_cmt4', ...
    '', ...
    'nfsq','ksq','x0x1sq','y0y1sq','_1_nfsq','_1_ksq',...
    };

assert(length(oldstrings)==length(newstrings), ...
    'list of old and new expressions must ob of same length');

N=length(oldstrings);

for n=1:N
    str=strrep(str,char(oldstrings{n}),char(newstrings{n}));
end