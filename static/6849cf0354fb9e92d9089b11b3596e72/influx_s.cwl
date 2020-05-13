class: CommandLineTool
id: influx_s.cwl
inputs:
- id: no_opt
  doc: no optimization, just use free parameters as is (after a projection on feasibility
    domain), to calculate dependent fluxes, cumomers, stats and so on
  type: boolean
  inputBinding:
    prefix: --noopt
- id: no_scale
  doc: no scaling factors to optimize => all scaling factors are assumed to be 1
  type: boolean
  inputBinding:
    prefix: --noscale
- id: meth
  doc: 'method for optimization, one of nlsic|BFGS|Nelder-Mead. Default: nlsic'
  type: string
  inputBinding:
    prefix: --meth
- id: full_sys
  doc: calculate all cumomer set (not just the reduced one necesary to simulate measurements)
  type: boolean
  inputBinding:
    prefix: --fullsys
- id: emu
  doc: simulate labeling in EMU approach
  type: boolean
  inputBinding:
    prefix: --emu
- id: ir_and
  doc: ignore initial approximation for free parameters (free fluxes and metabolite
    concentrations) from the FTBL file or from a dedicated file (cf --fseries and
    --iseries option) and use random values drawn uniformly from [0,1] interval
  type: boolean
  inputBinding:
    prefix: --irand
- id: sens
  doc: "sensitivity method: SENS can be 'mc[=N]', mc stands for Monte-Carlo. N is\
    \ an optional number of Monte-Carlo simulations. Default for N: 10"
  type: string
  inputBinding:
    prefix: --sens
- id: cup_x
  doc: 'upper limit for reverse fluxes. Must be in interval [0, 1]. Default: 0.999'
  type: string
  inputBinding:
    prefix: --cupx
- id: cup_n
  doc: 'absolute limit for net fluxes: -cupn <= netflux <= cupn. Must be non negative.
    Value 0 means no limit. Default: 1.e3'
  type: string
  inputBinding:
    prefix: --cupn
- id: cupp
  doc: 'upper limit for metabolite pool. Default: 1.e5'
  type: string
  inputBinding:
    prefix: --cupp
- id: clown_r
  doc: lower limit for not reversible free and dependent fluxes. Zero value (default)
    means no lower limit
  type: string
  inputBinding:
    prefix: --clownr
- id: cin_out
  doc: 'lower limit for input/output free and dependent fluxes. Must be non negative.
    Default: 0'
  type: string
  inputBinding:
    prefix: --cinout
- id: clow_p
  doc: lower limit for free metabolite pools. Must be positive. Default 1.e-8
  type: string
  inputBinding:
    prefix: --clowp
- id: np
  doc: When integer >= 1, it is a number of parallel subprocesses used in Monte-Carlo
    (MC) simulations or for multiple FTBL inputs. When NP is a float number between
    0 and 1, it gives a fraction of available cores (rounded to closest integer) to
    be used. Without this option or for NP=0, all available cores in a given node
    are used for MC simulations.
  type: string
  inputBinding:
    prefix: --np
- id: ln
  doc: Least norm solution is used for increments during the non-linear iterations
    when Jacobian is rank deficient
  type: boolean
  inputBinding:
    prefix: --ln
- id: sln
  doc: Least norm of the solution of linearized problem (and not just of increments)
    is used when Jacobian is rank deficient
  type: boolean
  inputBinding:
    prefix: --sln
- id: tik_h_reg
  doc: Approximate least norm solution is used for increments during the non-linear
    iterations when Jacobian is rank deficient
  type: boolean
  inputBinding:
    prefix: --tikhreg
- id: lim
  doc: The same as --ln but with a function limSolve::lsei()
  type: boolean
  inputBinding:
    prefix: --lim
- id: zc
  doc: Apply zero crossing strategy with non negative threshold for net fluxes
  type: string
  inputBinding:
    prefix: --zc
- id: ff_guess
  doc: Don't use free/dependent flux definitions from FTBL file(s). Make an automatic
    guess.
  type: boolean
  inputBinding:
    prefix: --ffguess
- id: f_series
  doc: "File name with free parameter values for multiple starting points. Default:\
    \ '' (empty, i.e. only one starting point from the FTBL file is used)"
  type: string
  inputBinding:
    prefix: --fseries
- id: iseries
  doc: "Indexes of starting points to use. Format: '1:10' -- use only first ten starting\
    \ points; '1,3' -- use the the first and third starting points; '1:10,15,91:100'\
    \ -- a mix of both formats is allowed. Default: '' (empty, i.e. all provided starting\
    \ points are used)"
  type: string
  inputBinding:
    prefix: --iseries
- id: seed
  doc: 'Integer (preferably a prime integer) used for reproducible random number generating.
    It makes reproducible random starting points (--irand) but also Monte-Carlo simulations
    for sensitivity analysis. Default: none, i.e. current system value is used, so
    random drawing will be varying at each run.'
  type: string
  inputBinding:
    prefix: --seed
- id: excl_outliers
  doc: 'This option takes an optional argument, a p-value between 0 and 1 which is
    used to filter out measurement outliers. The filtering is based on Z statistics
    calculated on reduced residual distribution. Default: 0.01.'
  type: boolean
  inputBinding:
    prefix: --excl_outliers
- id: no_calc
  doc: generate an R code but not execute it.
  type: boolean
  inputBinding:
    prefix: --nocalc
- id: add_noise
  doc: Add centered gaussian noise to simulated measurements written to _res.kvh file.
    SD of this noise is taken from FTBL file
  type: boolean
  inputBinding:
    prefix: --addnoise
- id: copy_doc
  doc: copy documentation directory in the current directory and exit. If ./doc exists,
    its content is silently owerriten.
  type: boolean
  inputBinding:
    prefix: --copy_doc
- id: copy_test
  doc: copy test directory in the current directory and exit. If ./test exists, its
    content is silently owerriten.
  type: boolean
  inputBinding:
    prefix: --copy_test
- id: install_r_dep
  doc: install R dependencies and exit.
  type: boolean
  inputBinding:
    prefix: --install_rdep
- id: time_it
  doc: 'developer option: measure cpu time or not'
  type: boolean
  inputBinding:
    prefix: --TIMEIT
- id: prof
  doc: 'developer option: do time profiling or not'
  type: boolean
  inputBinding:
    prefix: --prof
- id: tb_limit
  doc: 'developer option: set trace back limit for python error messages'
  type: string
  inputBinding:
    prefix: --tblimit
outputs: []
cwlVersion: v1.1
baseCommand:
- influx_s
