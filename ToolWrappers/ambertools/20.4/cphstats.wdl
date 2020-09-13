version 1.0

task Cphstats {
  input {
    Boolean? overwrite
    Boolean? debug
    Boolean? expert
    Boolean? novice
    File? cp_in
    Float? time_step
    File? calc_pka_output
    File? running_avg_out
    File? chunk_out
    File? cumulative_out
    File? population
    File? conditional_output
    File? chunk_conditional
    File? verbose
    Int? interval
    Boolean? protonated
    Boolean? deprotonated
    Boolean? pka
    Boolean? calc_pka
    Boolean? no_calc_pka
    Int? running_avg
    Int? chunk
    Boolean? cumulative
    String? fix_re_md
    Int? conditional
    Boolean? v
  }
  command <<<
    cphstats \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (expert) then "--expert" else ""} \
      ~{if (novice) then "--novice" else ""} \
      ~{if defined(cp_in) then ("--cpin " +  '"' + cp_in + '"') else ""} \
      ~{if defined(time_step) then ("--time-step " +  '"' + time_step + '"') else ""} \
      ~{if defined(calc_pka_output) then ("--calcpka-output " +  '"' + calc_pka_output + '"') else ""} \
      ~{if defined(running_avg_out) then ("--running-avg-out " +  '"' + running_avg_out + '"') else ""} \
      ~{if defined(chunk_out) then ("--chunk-out " +  '"' + chunk_out + '"') else ""} \
      ~{if defined(cumulative_out) then ("--cumulative-out " +  '"' + cumulative_out + '"') else ""} \
      ~{if defined(population) then ("--population " +  '"' + population + '"') else ""} \
      ~{if defined(conditional_output) then ("--conditional-output " +  '"' + conditional_output + '"') else ""} \
      ~{if defined(chunk_conditional) then ("--chunk-conditional " +  '"' + chunk_conditional + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if (protonated) then "--protonated" else ""} \
      ~{if (deprotonated) then "--deprotonated" else ""} \
      ~{if (pka) then "--pKa" else ""} \
      ~{if (calc_pka) then "--calcpka" else ""} \
      ~{if (no_calc_pka) then "--no-calcpka" else ""} \
      ~{if defined(running_avg) then ("--running-avg " +  '"' + running_avg + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if (cumulative) then "--cumulative" else ""} \
      ~{if defined(fix_re_md) then ("--fix-remd " +  '"' + fix_re_md + '"') else ""} \
      ~{if defined(conditional) then ("--conditional " +  '"' + conditional + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    overwrite: "Allow existing outputs to be overwritten."
    debug: "Print out information about the files that are\\nbeing read in and used for the calculations."
    expert: "I will consider you an expert user and NOT warn\\nyou if you try to compute statistics from REMD-based\\nfiles before using --fix-remd [NOT default behavior]"
    novice: "I will warn you if you try to use REMD-based files\\nto compute statistics. [Default behavior]"
    cp_in: "Input cpin or cpein file (from pmemd or sander) with titrating residue\\ninformation."
    time_step: "This is the time step in ps you used in your simulations.\\nIt will be used to print data as a function of time.\\nDefault is 2 fs (0.002)"
    calc_pka_output: "File to which the standard `calcpka'-type statistics\\nare written. Default is stdout"
    running_avg_out: "Output file where the running averages of time series\\ndata for each residue is printed (see [Output Options]\\nbelow for details). Default is [running_avgs.dat]"
    chunk_out: "Output file where the time series data calculated\\nover chunks of the simulation are printed (see\\n[Output Options] below for details).\\nDefault is [chunk.dat]"
    cumulative_out: "Output file where the cumulative time series data\\nis printed (see [Output Options] below for details).\\nDefault is [cumulative.dat]"
    population: "Output file where protonation state populations are\\nprinted for every state of every residue."
    conditional_output: "Output file with requested conditional probabilities.\\nDefault is [conditional_prob.dat]."
    chunk_conditional: "Prints a time series of the conditional probabilities over\\na trajectory split up into chunks."
    verbose: "Controls how much information is printed to the\\ncalcpka-style output file. Options are:\\n(0) Just print fraction protonated. [Default]\\n(1) Print everything calcpka prints."
    interval: "An interval between which to print out time series data\\nlike `chunks', `cumulative' data, and running averages.\\nIt is also used as the 'window' of the conditional\\nprobability time series (--chunk-conditional).\\nDefault [1000]"
    protonated: "Print out protonation fraction instead of deprotonation\\nfraction in time series data (Default behavior)."
    deprotonated: "Print out deprotonation fraction instead of protonation\\nfraction in time series data."
    pka: "Print predicted pKas (via Henderson-Hasselbalch equation) in place\\nof fraction (de)protonated. NOT default behavior."
    calc_pka: "Triggers the calcpka-style output [On by default]"
    no_calc_pka: "Turns off the calcpka-style output"
    running_avg: "Defines a window size for a moving, running average\\ntime series. <WINDOW> is the number of MD steps (NOT\\nthe number of MC exchange attempts)."
    chunk: "Computes the time series data over a chunk of the\\nsimulation of size <WINDOW> time steps. See above for\\ndetails."
    cumulative: "Computes the cumulative average time series data (see above\\nfor options) over the course of the trajectory."
    fix_re_md: "This option will trigger cphstats to reassemble the\\ntitration data into pH-specific ensembles. This\\nis an exclusive mode of the program---no other\\nanalyses will be done."
    conditional: "Evaluates conditional probabilities. CONDITIONAL should be a\\nstring of the format:\\n<resid>:<state>,<resid>:<state>,...\\nor\\n<resid>:PROT,<resid>:DEPROT,...\\nor\\n<resid>:<state1>;<state2>,<resid>:PROT,...\\nWhere <resid> is the residue number in the prmtop (NOT the\\ncpin) and <state> is either the state number or (p)rotonated\\nor (d)eprotonated, case-insensitive"
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