version 1.0

task Cmcalibrate {
  input {
    Int? set_random_length
    Boolean? forecast
    String? n_forecast
    Boolean? mem_req
    Boolean? no_forecast
    Int? g_tail_n
    Int? l_tail_n
    String? tail_p
    File? h_file
    File? s_file
    File? qq_file
    File? f_file
    File? x_file
    Int? seed
    String? beta
    Boolean? non_banded
    Boolean? no_null_three
    Boolean? random
    File? gc
    Int? cpu
    Boolean? options
    String cm_file
  }
  command <<<
    cmcalibrate \
      ~{cm_file} \
      ~{if defined(set_random_length) then ("-L " +  '"' + set_random_length + '"') else ""} \
      ~{if (forecast) then "--forecast" else ""} \
      ~{if defined(n_forecast) then ("--nforecast " +  '"' + n_forecast + '"') else ""} \
      ~{if (mem_req) then "--memreq" else ""} \
      ~{if (no_forecast) then "--noforecast" else ""} \
      ~{if defined(g_tail_n) then ("--gtailn " +  '"' + g_tail_n + '"') else ""} \
      ~{if defined(l_tail_n) then ("--ltailn " +  '"' + l_tail_n + '"') else ""} \
      ~{if defined(tail_p) then ("--tailp " +  '"' + tail_p + '"') else ""} \
      ~{if defined(h_file) then ("--hfile " +  '"' + h_file + '"') else ""} \
      ~{if defined(s_file) then ("--sfile " +  '"' + s_file + '"') else ""} \
      ~{if defined(qq_file) then ("--qqfile " +  '"' + qq_file + '"') else ""} \
      ~{if defined(f_file) then ("--ffile " +  '"' + f_file + '"') else ""} \
      ~{if defined(x_file) then ("--xfile " +  '"' + x_file + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if (non_banded) then "--nonbanded" else ""} \
      ~{if (no_null_three) then "--nonull3" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_random_length: ": set random seq length to search in Mb to <x>  [1.6]  (0.01<=x<=160.)"
    forecast: ": don't do calibration, predict running time and exit"
    n_forecast: ": w/--forecast, predict time with <n> processors (maybe for MPI)"
    mem_req: ": don't do calibration, print required memory and exit"
    no_forecast: ": do calibration, but skip running time prediction"
    g_tail_n: ": fit the top <n> hits/Mb in histogram for glocal modes [df: 250]"
    l_tail_n: ": fit the top <n> hits/Mb in histogram for  local modes [df: 750]"
    tail_p: ": set fraction of histogram tail to fit to exp tail to <x>"
    h_file: ": save fitted score histogram(s) to file <f>"
    s_file: ": save survival plot to file <f>"
    qq_file: ": save Q-Q plot for score histograms to file <f>"
    f_file: ": save lambdas for different tail fit probs to file <f>"
    x_file: ": save scores in fit tail to file <f>"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)"
    beta: ": set tail loss prob for query dependent banding (QDB) to <x>"
    non_banded: ": do not use QDB"
    no_null_three: ": turn OFF the NULL3 post hoc additional null model"
    random: ": use GC content of random null background model of CM"
    gc: ": use GC content distribution from file <f>"
    cpu: ": number of parallel CPU workers to use for multithreads"
    options: ""
    cm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}