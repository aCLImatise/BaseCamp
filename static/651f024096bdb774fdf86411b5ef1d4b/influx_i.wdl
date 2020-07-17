version 1.0

task InfluxI {
  input {
    Boolean? no_opt
    Boolean? no_scale
    String? meth
    Boolean? full_sys
    Boolean? emu
    Boolean? ir_and
    String? sens
    String? cup_x
    String? cup_n
    String? cupp
    String? clown_r
    String? cin_out
    String? clow_p
    String? np
    Boolean? ln
    Boolean? sln
    Boolean? tik_h_reg
    Boolean? lim
    String? zc
    Boolean? ff_guess
    String? f_series
    String? iseries
    String? seed
    Boolean? excl_outliers
    Boolean? no_calc
    Boolean? add_noise
    String? time_order
    Boolean? copy_doc
    Boolean? copy_test
    Boolean? install_r_dep
    Boolean? time_it
    Boolean? prof
    String? tb_limit
  }
  command <<<
    influx_i \
      ~{true="--noopt" false="" no_opt} \
      ~{true="--noscale" false="" no_scale} \
      ~{if defined(meth) then ("--meth " +  '"' + meth + '"') else ""} \
      ~{true="--fullsys" false="" full_sys} \
      ~{true="--emu" false="" emu} \
      ~{true="--irand" false="" ir_and} \
      ~{if defined(sens) then ("--sens " +  '"' + sens + '"') else ""} \
      ~{if defined(cup_x) then ("--cupx " +  '"' + cup_x + '"') else ""} \
      ~{if defined(cup_n) then ("--cupn " +  '"' + cup_n + '"') else ""} \
      ~{if defined(cupp) then ("--cupp " +  '"' + cupp + '"') else ""} \
      ~{if defined(clown_r) then ("--clownr " +  '"' + clown_r + '"') else ""} \
      ~{if defined(cin_out) then ("--cinout " +  '"' + cin_out + '"') else ""} \
      ~{if defined(clow_p) then ("--clowp " +  '"' + clow_p + '"') else ""} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{true="--ln" false="" ln} \
      ~{true="--sln" false="" sln} \
      ~{true="--tikhreg" false="" tik_h_reg} \
      ~{true="--lim" false="" lim} \
      ~{if defined(zc) then ("--zc " +  '"' + zc + '"') else ""} \
      ~{true="--ffguess" false="" ff_guess} \
      ~{if defined(f_series) then ("--fseries " +  '"' + f_series + '"') else ""} \
      ~{if defined(iseries) then ("--iseries " +  '"' + iseries + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--excl_outliers" false="" excl_outliers} \
      ~{true="--nocalc" false="" no_calc} \
      ~{true="--addnoise" false="" add_noise} \
      ~{if defined(time_order) then ("--time_order " +  '"' + time_order + '"') else ""} \
      ~{true="--copy_doc" false="" copy_doc} \
      ~{true="--copy_test" false="" copy_test} \
      ~{true="--install_rdep" false="" install_r_dep} \
      ~{true="--TIMEIT" false="" time_it} \
      ~{true="--prof" false="" prof} \
      ~{if defined(tb_limit) then ("--tblimit " +  '"' + tb_limit + '"') else ""}
  >>>
  parameter_meta {
    no_opt: "no optimization, just use free parameters as is (after a projection on feasibility domain), to calculate dependent fluxes, cumomers, stats and so on"
    no_scale: "no scaling factors to optimize => all scaling factors are assumed to be 1"
    meth: "method for optimization, one of nlsic|BFGS|Nelder- Mead. Default: nlsic"
    full_sys: "calculate all cumomer set (not just the reduced one necesary to simulate measurements)"
    emu: "simulate labeling in EMU approach"
    ir_and: "ignore initial approximation for free parameters (free fluxes and metabolite concentrations) from the FTBL file or from a dedicated file (cf --fseries and --iseries option) and use random values drawn uniformly from [0,1] interval"
    sens: "sensitivity method: SENS can be 'mc[=N]', mc stands for Monte-Carlo. N is an optional number of Monte- Carlo simulations. Default for N: 10"
    cup_x: "upper limit for reverse fluxes. Must be in interval [0, 1]. Default: 0.999"
    cup_n: "absolute limit for net fluxes: -cupn <= netflux <= cupn. Must be non negative. Value 0 means no limit. Default: 1.e3"
    cupp: "upper limit for metabolite pool. Default: 1.e5"
    clown_r: "lower limit for not reversible free and dependent fluxes. Zero value (default) means no lower limit"
    cin_out: "lower limit for input/output free and dependent fluxes. Must be non negative. Default: 0"
    clow_p: "lower limit for free metabolite pools. Must be positive. Default 1.e-8"
    np: "When integer >= 1, it is a number of parallel subprocesses used in Monte-Carlo (MC) simulations or for multiple FTBL inputs. When NP is a float number between 0 and 1, it gives a fraction of available cores (rounded to closest integer) to be used. Without this option or for NP=0, all available cores in a given node are used for MC simulations."
    ln: "Least norm solution is used for increments during the non-linear iterations when Jacobian is rank deficient"
    sln: "Least norm of the solution of linearized problem (and not just of increments) is used when Jacobian is rank deficient"
    tik_h_reg: "Approximate least norm solution is used for increments during the non-linear iterations when Jacobian is rank deficient"
    lim: "The same as --ln but with a function limSolve::lsei()"
    zc: "Apply zero crossing strategy with non negative threshold for net fluxes"
    ff_guess: "Don't use free/dependent flux definitions from FTBL file(s). Make an automatic guess."
    f_series: "File name with free parameter values for multiple starting points. Default: '' (empty, i.e. only one starting point from the FTBL file is used)"
    iseries: "Indexes of starting points to use. Format: '1:10' -- use only first ten starting points; '1,3' -- use the the first and third starting points; '1:10,15,91:100' -- a mix of both formats is allowed. Default: '' (empty, i.e. all provided starting points are used)"
    seed: "Integer (preferably a prime integer) used for reproducible random number generating. It makes reproducible random starting points (--irand) but also Monte-Carlo simulations for sensitivity analysis. Default: none, i.e. current system value is used, so random drawing will be varying at each run."
    excl_outliers: "This option takes an optional argument, a p-value between 0 and 1 which is used to filter out measurement outliers. The filtering is based on Z statistics calculated on reduced residual distribution. Default: 0.01."
    no_calc: "generate an R code but not execute it."
    add_noise: "Add centered gaussian noise to simulated measurements written to _res.kvh file. SD of this noise is taken from FTBL file"
    time_order: "Time order for ODE solving (1 (default), 2 or 1,2). Order 2 is more precise but more time consuming. The value '1,2' makes to start solving the ODE with the first order scheme then continues with the order 2."
    copy_doc: "copy documentation directory in the current directory and exit. If ./doc exists, its content is silently owerriten."
    copy_test: "copy test directory in the current directory and exit. If ./test exists, its content is silently owerriten."
    install_r_dep: "install R dependencies and exit."
    time_it: "developer option: measure cpu time or not"
    prof: "developer option: do time profiling or not"
    tb_limit: "developer option: set trace back limit for python error messages"
  }
}