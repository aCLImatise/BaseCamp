version 1.0

task Cestats {
  input {
    Boolean? overwrite
    Boolean? debug
    Boolean? expert
    Boolean? novice
    File? ce_in
    Float? time_step
    File? cal_ceo_output
    File? running_avg_out
    File? chunk_out
    File? cumulative_out
    File? population
    File? conditional_output
    File? chunk_conditional
    File? verbose
    Int? interval
    Boolean? reduced
    Boolean? oxidized
    Boolean? eo
    Boolean? cal_ceo
    Boolean? no_cal_ceo
    Int? running_avg
    Int? chunk
    Boolean? cumulative
    String? fix_re_md
    Int? conditional
    Boolean? v
  }
  command <<<
    cestats \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (expert) then "--expert" else ""} \
      ~{if (novice) then "--novice" else ""} \
      ~{if defined(ce_in) then ("--cein " +  '"' + ce_in + '"') else ""} \
      ~{if defined(time_step) then ("--time-step " +  '"' + time_step + '"') else ""} \
      ~{if defined(cal_ceo_output) then ("--calceo-output " +  '"' + cal_ceo_output + '"') else ""} \
      ~{if defined(running_avg_out) then ("--running-avg-out " +  '"' + running_avg_out + '"') else ""} \
      ~{if defined(chunk_out) then ("--chunk-out " +  '"' + chunk_out + '"') else ""} \
      ~{if defined(cumulative_out) then ("--cumulative-out " +  '"' + cumulative_out + '"') else ""} \
      ~{if defined(population) then ("--population " +  '"' + population + '"') else ""} \
      ~{if defined(conditional_output) then ("--conditional-output " +  '"' + conditional_output + '"') else ""} \
      ~{if defined(chunk_conditional) then ("--chunk-conditional " +  '"' + chunk_conditional + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if (reduced) then "--reduced" else ""} \
      ~{if (oxidized) then "--oxidized" else ""} \
      ~{if (eo) then "--Eo" else ""} \
      ~{if (cal_ceo) then "--calceo" else ""} \
      ~{if (no_cal_ceo) then "--no-calceo" else ""} \
      ~{if defined(running_avg) then ("--running-avg " +  '"' + running_avg + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if (cumulative) then "--cumulative" else ""} \
      ~{if defined(fix_re_md) then ("--fix-remd " +  '"' + fix_re_md + '"') else ""} \
      ~{if defined(conditional) then ("--conditional " +  '"' + conditional + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overwrite: "Allow existing outputs to be overwritten."
    debug: "Print out information about the files that are\\nbeing read in and used for the calculations."
    expert: "I will consider you an expert user and NOT warn\\nyou if you try to compute statistics from REMD-based\\nfiles before using --fix-remd [NOT default behavior]"
    novice: "I will warn you if you try to use REMD-based files\\nto compute statistics. [Default behavior]"
    ce_in: "Input cein or cpein file (from pmemd or sander) with titrating residue\\ninformation."
    time_step: "This is the time step in ps you used in your simulations.\\nIt will be used to print data as a function of time.\\nDefault is 2 fs (0.002)"
    cal_ceo_output: "File to which the standard `calceo'-type statistics\\nare written. Default is stdout"
    running_avg_out: "Output file where the running averages of time series\\ndata for each residue is printed (see [Output Options]\\nbelow for details). Default is [running_avgs.dat]"
    chunk_out: "Output file where the time series data calculated\\nover chunks of the simulation are printed (see\\n[Output Options] below for details).\\nDefault is [chunk.dat]"
    cumulative_out: "Output file where the cumulative time series data\\nis printed (see [Output Options] below for details).\\nDefault is [cumulative.dat]"
    population: "Output file where reduction state populations are\\nprinted for every state of every residue."
    conditional_output: "Output file with requested conditional probabilities.\\nDefault is [conditional_prob.dat]."
    chunk_conditional: "Prints a time series of the conditional probabilities over\\na trajectory split up into chunks."
    verbose: "Controls how much information is printed to the\\ncalceo-style output file. Options are:\\n(0) Just print fraction reduced. [Default]\\n(1) Print everything calceo prints."
    interval: "An interval between which to print out time series data\\nlike `chunks', `cumulative' data, and running averages.\\nIt is also used as the 'window' of the conditional\\nprobability time series (--chunk-conditional).\\nDefault [1000]"
    reduced: "Print out reduction fraction instead of oxidation\\nfraction in time series data (Default behavior)."
    oxidized: "Print out oxidation fraction instead of reduction\\nfraction in time series data."
    eo: "Print predicted Eos (via Nernst equation) in place\\nof fraction reduced or oxidized. NOT default behavior."
    cal_ceo: "Triggers the calceo-style output [On by default]"
    no_cal_ceo: "Turns off the calceo-style output"
    running_avg: "Defines a window size for a moving, running average\\ntime series. <WINDOW> is the number of MD steps (NOT\\nthe number of MC exchange attempts)."
    chunk: "Computes the time series data over a chunk of the\\nsimulation of size <WINDOW> time steps. See above for\\ndetails."
    cumulative: "Computes the cumulative average time series data (see above\\nfor options) over the course of the trajectory."
    fix_re_md: "This option will trigger cestats to reassemble the\\ntitration data into Redox potential specific ensembles. This\\nis an exclusive mode of the program---no other\\nanalyses will be done."
    conditional: "Evaluates conditional probabilities. CONDITIONAL should be a\\nstring of the format:\\n<resid>:<state>,<resid>:<state>,...\\nor\\n<resid>:REDU,<resid>:OXID,...\\nor\\n<resid>:<state1>;<state2>,<resid>:REDU,...\\nWhere <resid> is the residue number in the prmtop (NOT the\\ncein) and <state> is either the state number or p (reduced)\\nor d (oxidized), case-insensitive"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_running_avg_out = "${in_running_avg_out}"
    File out_chunk_out = "${in_chunk_out}"
    File out_cumulative_out = "${in_cumulative_out}"
    File out_population = "${in_population}"
    File out_conditional_output = "${in_conditional_output}"
    File out_verbose = "${in_verbose}"
  }
}