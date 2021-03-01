class: CommandLineTool
id: influx_i.cwl
inputs:
- id: in_no_opt
  doc: "no optimization, just use free parameters as is (after\na projection on feasibility\
    \ domain), to calculate\ndependent fluxes, cumomers, stats and so on"
  type: boolean?
  inputBinding:
    prefix: --noopt
- id: in_no_scale
  doc: "no scaling factors to optimize => all scaling factors\nare assumed to be 1"
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_meth
  doc: "method for optimization, one of nlsic|BFGS|Nelder-\nMead. Default: nlsic"
  type: string?
  inputBinding:
    prefix: --meth
- id: in_full_sys
  doc: "calculate all cumomer set (not just the reduced one\nnecesary to simulate\
    \ measurements)"
  type: boolean?
  inputBinding:
    prefix: --fullsys
- id: in_emu
  doc: simulate labeling in EMU approach
  type: boolean?
  inputBinding:
    prefix: --emu
- id: in_ir_and
  doc: "ignore initial approximation for free parameters (free\nfluxes and metabolite\
    \ concentrations) from the FTBL\nfile or from a dedicated file (cf --fseries and\n\
    --iseries option) and use random values drawn\nuniformly from [0,1] interval"
  type: boolean?
  inputBinding:
    prefix: --irand
- id: in_sens
  doc: "sensitivity method: SENS can be 'mc[=N]', mc stands\nfor Monte-Carlo. N is\
    \ an optional number of Monte-\nCarlo simulations. Default for N: 10"
  type: long?
  inputBinding:
    prefix: --sens
- id: in_cup_x
  doc: "upper limit for reverse fluxes. Must be in interval\n[0, 1]. Default: 0.999"
  type: double?
  inputBinding:
    prefix: --cupx
- id: in_cup_n
  doc: "absolute limit for net fluxes: -cupn <= netflux <=\ncupn. Must be non negative.\
    \ Value 0 means no limit.\nDefault: 1.e3"
  type: double?
  inputBinding:
    prefix: --cupn
- id: in_cupp
  doc: 'upper limit for metabolite pool. Default: 1.e5'
  type: double?
  inputBinding:
    prefix: --cupp
- id: in_clown_r
  doc: "lower limit for not reversible free and dependent\nfluxes. Zero value (default)\
    \ means no lower limit"
  type: string?
  inputBinding:
    prefix: --clownr
- id: in_cin_out
  doc: "lower limit for input/output free and dependent\nfluxes. Must be non negative.\
    \ Default: 0"
  type: long?
  inputBinding:
    prefix: --cinout
- id: in_clow_p
  doc: "lower limit for free metabolite pools. Must be\npositive. Default 1.e-8"
  type: double?
  inputBinding:
    prefix: --clowp
- id: in_np
  doc: "When integer >= 1, it is a number of parallel\nsubprocesses used in Monte-Carlo\
    \ (MC) simulations or\nfor multiple FTBL inputs. When NP is a float number\nbetween\
    \ 0 and 1, it gives a fraction of available\ncores (rounded to closest integer)\
    \ to be used. Without\nthis option or for NP=0, all available cores in a\ngiven\
    \ node are used for MC simulations."
  type: double?
  inputBinding:
    prefix: --np
- id: in_ln
  doc: "Least norm solution is used for increments during the\nnon-linear iterations\
    \ when Jacobian is rank deficient"
  type: boolean?
  inputBinding:
    prefix: --ln
- id: in_sln
  doc: "Least norm of the solution of linearized problem (and\nnot just of increments)\
    \ is used when Jacobian is rank\ndeficient"
  type: boolean?
  inputBinding:
    prefix: --sln
- id: in_tik_h_reg
  doc: "Approximate least norm solution is used for increments\nduring the non-linear\
    \ iterations when Jacobian is rank\ndeficient"
  type: boolean?
  inputBinding:
    prefix: --tikhreg
- id: in_lim
  doc: The same as --ln but with a function limSolve::lsei()
  type: boolean?
  inputBinding:
    prefix: --lim
- id: in_zc
  doc: "Apply zero crossing strategy with non negative\nthreshold for net fluxes"
  type: string?
  inputBinding:
    prefix: --zc
- id: in_ff_guess
  doc: "Don't use free/dependent flux definitions from FTBL\nfile(s). Make an automatic\
    \ guess."
  type: boolean?
  inputBinding:
    prefix: --ffguess
- id: in_f_series
  doc: "File name with free parameter values for multiple\nstarting points. Default:\
    \ '' (empty, i.e. only one\nstarting point from the FTBL file is used)"
  type: File?
  inputBinding:
    prefix: --fseries
- id: in_iseries
  doc: "Indexes of starting points to use. Format: '1:10' --\nuse only first ten starting\
    \ points; '1,3' -- use the\nthe first and third starting points; '1:10,15,91:100'\n\
    -- a mix of both formats is allowed. Default: ''\n(empty, i.e. all provided starting\
    \ points are used)"
  type: long?
  inputBinding:
    prefix: --iseries
- id: in_seed
  doc: "Integer (preferably a prime integer) used for\nreproducible random number\
    \ generating. It makes\nreproducible random starting points (--irand) but also\n\
    Monte-Carlo simulations for sensitivity analysis.\nDefault: none, i.e. current\
    \ system value is used, so\nrandom drawing will be varying at each run."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_excl_outliers
  doc: "This option takes an optional argument, a p-value\nbetween 0 and 1 which is\
    \ used to filter out\nmeasurement outliers. The filtering is based on Z\nstatistics\
    \ calculated on reduced residual\ndistribution. Default: 0.01."
  type: boolean?
  inputBinding:
    prefix: --excl_outliers
- id: in_no_calc
  doc: generate an R code but not execute it.
  type: boolean?
  inputBinding:
    prefix: --nocalc
- id: in_add_noise
  doc: "Add centered gaussian noise to simulated measurements\nwritten to _res.kvh\
    \ file. SD of this noise is taken\nfrom FTBL file"
  type: boolean?
  inputBinding:
    prefix: --addnoise
- id: in_time_order
  doc: "Time order for ODE solving (1 (default), 2 or 1,2).\nOrder 2 is more precise\
    \ but more time consuming. The\nvalue '1,2' makes to start solving the ODE with\
    \ the\nfirst order scheme then continues with the order 2."
  type: long?
  inputBinding:
    prefix: --time_order
- id: in_copy_doc
  doc: "copy documentation directory in the current directory\nand exit. If ./doc\
    \ exists, its content is silently\nowerriten."
  type: boolean?
  inputBinding:
    prefix: --copy_doc
- id: in_copy_test
  doc: "copy test directory in the current directory and exit.\nIf ./test exists,\
    \ its content is silently owerriten."
  type: boolean?
  inputBinding:
    prefix: --copy_test
- id: in_install_r_dep
  doc: install R dependencies and exit.
  type: boolean?
  inputBinding:
    prefix: --install_rdep
- id: in_time_it
  doc: 'developer option: measure cpu time or not'
  type: boolean?
  inputBinding:
    prefix: --TIMEIT
- id: in_prof
  doc: 'developer option: do time profiling or not'
  type: boolean?
  inputBinding:
    prefix: --prof
- id: in_tb_limit
  doc: "developer option: set trace back limit for python\nerror messages\n"
  type: string?
  inputBinding:
    prefix: --tblimit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- influx_i
