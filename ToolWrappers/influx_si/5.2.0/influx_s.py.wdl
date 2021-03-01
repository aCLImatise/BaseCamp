version 1.0

task InfluxSpy {
  input {
    Boolean? no_opt
    Boolean? no_scale
    String? meth
    Boolean? full_sys
    Boolean? emu
    Boolean? ir_and
    Int? sens
    Float? cup_x
    Float? cup_n
    Float? cupp
    String? clown_r
    Int? cin_out
    Float? clow_p
    Float? np
    Boolean? ln
    Boolean? sln
    Boolean? tik_h_reg
    Boolean? lim
    String? zc
    Boolean? ff_guess
    File? f_series
    Int? iseries
    Int? seed
    Boolean? excl_outliers
    Boolean? no_calc
    Boolean? add_noise
    Boolean? copy_doc
    Boolean? copy_test
    Boolean? install_r_dep
    Boolean? time_it
    Boolean? prof
    String? tb_limit
  }
  command <<<
    influx_s_py \
      ~{if (no_opt) then "--noopt" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if defined(meth) then ("--meth " +  '"' + meth + '"') else ""} \
      ~{if (full_sys) then "--fullsys" else ""} \
      ~{if (emu) then "--emu" else ""} \
      ~{if (ir_and) then "--irand" else ""} \
      ~{if defined(sens) then ("--sens " +  '"' + sens + '"') else ""} \
      ~{if defined(cup_x) then ("--cupx " +  '"' + cup_x + '"') else ""} \
      ~{if defined(cup_n) then ("--cupn " +  '"' + cup_n + '"') else ""} \
      ~{if defined(cupp) then ("--cupp " +  '"' + cupp + '"') else ""} \
      ~{if defined(clown_r) then ("--clownr " +  '"' + clown_r + '"') else ""} \
      ~{if defined(cin_out) then ("--cinout " +  '"' + cin_out + '"') else ""} \
      ~{if defined(clow_p) then ("--clowp " +  '"' + clow_p + '"') else ""} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{if (ln) then "--ln" else ""} \
      ~{if (sln) then "--sln" else ""} \
      ~{if (tik_h_reg) then "--tikhreg" else ""} \
      ~{if (lim) then "--lim" else ""} \
      ~{if defined(zc) then ("--zc " +  '"' + zc + '"') else ""} \
      ~{if (ff_guess) then "--ffguess" else ""} \
      ~{if defined(f_series) then ("--fseries " +  '"' + f_series + '"') else ""} \
      ~{if defined(iseries) then ("--iseries " +  '"' + iseries + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (excl_outliers) then "--excl_outliers" else ""} \
      ~{if (no_calc) then "--nocalc" else ""} \
      ~{if (add_noise) then "--addnoise" else ""} \
      ~{if (copy_doc) then "--copy_doc" else ""} \
      ~{if (copy_test) then "--copy_test" else ""} \
      ~{if (install_r_dep) then "--install_rdep" else ""} \
      ~{if (time_it) then "--TIMEIT" else ""} \
      ~{if (prof) then "--prof" else ""} \
      ~{if defined(tb_limit) then ("--tblimit " +  '"' + tb_limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_opt: "no optimization, just use free parameters as is (after a\\nprojection on feasibility domain), to calculate dependent\\nfluxes, cumomers, stats and so on"
    no_scale: "no scaling factors to optimize => all scaling factors are\\nassumed to be 1"
    meth: "method for optimization, one of nlsic|BFGS|Nelder-Mead.\\nDefault: nlsic"
    full_sys: "calculate all cumomer set (not just the reduced one\\nnecesary to simulate measurements)"
    emu: "simulate labeling in EMU approach"
    ir_and: "ignore initial approximation for free parameters (free\\nfluxes and metabolite concentrations) from the FTBL file\\nor from a dedicated file (cf --fseries and --iseries\\noption) and use random values drawn uniformly from [0,1]\\ninterval"
    sens: "sensitivity method: SENS can be 'mc[=N]', mc stands for\\nMonte-Carlo. N is an optional number of Monte-Carlo\\nsimulations. Default for N: 10"
    cup_x: "upper limit for reverse fluxes. Must be in interval [0,\\n1]. Default: 0.999"
    cup_n: "absolute limit for net fluxes: -cupn <= netflux <= cupn.\\nMust be non negative. Value 0 means no limit. Default:\\n1.e3"
    cupp: "upper limit for metabolite pool. Default: 1.e5"
    clown_r: "lower limit for not reversible free and dependent fluxes.\\nZero value (default) means no lower limit"
    cin_out: "lower limit for input/output free and dependent fluxes.\\nMust be non negative. Default: 0"
    clow_p: "lower limit for free metabolite pools. Must be positive.\\nDefault 1.e-8"
    np: "When integer >= 1, it is a number of parallel\\nsubprocesses used in Monte-Carlo (MC) simulations or for\\nmultiple FTBL inputs. When NP is a float number between 0\\nand 1, it gives a fraction of available cores (rounded to\\nclosest integer) to be used. Without this option or for\\nNP=0, all available cores in a given node are used for MC\\nsimulations."
    ln: "Least norm solution is used for increments during the\\nnon-linear iterations when Jacobian is rank deficient"
    sln: "Least norm of the solution of linearized problem (and not\\njust of increments) is used when Jacobian is rank\\ndeficient"
    tik_h_reg: "Approximate least norm solution is used for increments\\nduring the non-linear iterations when Jacobian is rank\\ndeficient"
    lim: "The same as --ln but with a function limSolve::lsei()"
    zc: "Apply zero crossing strategy with non negative threshold\\nfor net fluxes"
    ff_guess: "Don't use free/dependent flux definitions from FTBL\\nfile(s). Make an automatic guess."
    f_series: "File name with free parameter values for multiple\\nstarting points. Default: '' (empty, i.e. only one\\nstarting point from the FTBL file is used)"
    iseries: "Indexes of starting points to use. Format: '1:10' -- use\\nonly first ten starting points; '1,3' -- use the the\\nfirst and third starting points; '1:10,15,91:100' -- a\\nmix of both formats is allowed. Default: '' (empty, i.e.\\nall provided starting points are used)"
    seed: "Integer (preferably a prime integer) used for\\nreproducible random number generating. It makes\\nreproducible random starting points (--irand) but also\\nMonte-Carlo simulations for sensitivity analysis.\\nDefault: none, i.e. current system value is used, so\\nrandom drawing will be varying at each run."
    excl_outliers: "This option takes an optional argument, a p-value between\\n0 and 1 which is used to filter out measurement outliers.\\nThe filtering is based on Z statistics calculated on\\nreduced residual distribution. Default: 0.01."
    no_calc: "generate an R code but not execute it."
    add_noise: "Add centered gaussian noise to simulated measurements\\nwritten to _res.kvh file. SD of this noise is taken from\\nFTBL file"
    copy_doc: "copy documentation directory in the current directory and\\nexit. If ./doc exists, its content is silently owerriten."
    copy_test: "copy test directory in the current directory and exit. If\\n./test exists, its content is silently owerriten."
    install_r_dep: "install R dependencies and exit."
    time_it: "developer option: measure cpu time or not"
    prof: "developer option: do time profiling or not"
    tb_limit: "developer option: set trace back limit for python error\\nmessages\\n"
  }
  output {
    File out_stdout = stdout()
  }
}