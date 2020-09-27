class: CommandLineTool
id: cphstats.cwl
inputs:
- id: in_overwrite
  doc: Allow existing outputs to be overwritten.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_debug
  doc: "Print out information about the files that are\nbeing read in and used for\
    \ the calculations."
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_expert
  doc: "I will consider you an expert user and NOT warn\nyou if you try to compute\
    \ statistics from REMD-based\nfiles before using --fix-remd [NOT default behavior]"
  type: boolean
  inputBinding:
    prefix: --expert
- id: in_novice
  doc: "I will warn you if you try to use REMD-based files\nto compute statistics.\
    \ [Default behavior]"
  type: boolean
  inputBinding:
    prefix: --novice
- id: in_cp_in
  doc: "Input cpin or cpein file (from pmemd or sander) with titrating residue\ninformation."
  type: File
  inputBinding:
    prefix: --cpin
- id: in_time_step
  doc: "This is the time step in ps you used in your simulations.\nIt will be used\
    \ to print data as a function of time.\nDefault is 2 fs (0.002)"
  type: double
  inputBinding:
    prefix: --time-step
- id: in_calc_pka_output
  doc: "File to which the standard `calcpka'-type statistics\nare written. Default\
    \ is stdout"
  type: File
  inputBinding:
    prefix: --calcpka-output
- id: in_running_avg_out
  doc: "Output file where the running averages of time series\ndata for each residue\
    \ is printed (see [Output Options]\nbelow for details). Default is [running_avgs.dat]"
  type: File
  inputBinding:
    prefix: --running-avg-out
- id: in_chunk_out
  doc: "Output file where the time series data calculated\nover chunks of the simulation\
    \ are printed (see\n[Output Options] below for details).\nDefault is [chunk.dat]"
  type: File
  inputBinding:
    prefix: --chunk-out
- id: in_cumulative_out
  doc: "Output file where the cumulative time series data\nis printed (see [Output\
    \ Options] below for details).\nDefault is [cumulative.dat]"
  type: File
  inputBinding:
    prefix: --cumulative-out
- id: in_population
  doc: "Output file where protonation state populations are\nprinted for every state\
    \ of every residue."
  type: File
  inputBinding:
    prefix: --population
- id: in_conditional_output
  doc: "Output file with requested conditional probabilities.\nDefault is [conditional_prob.dat]."
  type: File
  inputBinding:
    prefix: --conditional-output
- id: in_chunk_conditional
  doc: "Prints a time series of the conditional probabilities over\na trajectory split\
    \ up into chunks."
  type: File
  inputBinding:
    prefix: --chunk-conditional
- id: in_verbose
  doc: "Controls how much information is printed to the\ncalcpka-style output file.\
    \ Options are:\n(0) Just print fraction protonated. [Default]\n(1) Print everything\
    \ calcpka prints."
  type: File
  inputBinding:
    prefix: --verbose
- id: in_interval
  doc: "An interval between which to print out time series data\nlike `chunks', `cumulative'\
    \ data, and running averages.\nIt is also used as the 'window' of the conditional\n\
    probability time series (--chunk-conditional).\nDefault [1000]"
  type: long
  inputBinding:
    prefix: --interval
- id: in_protonated
  doc: "Print out protonation fraction instead of deprotonation\nfraction in time\
    \ series data (Default behavior)."
  type: boolean
  inputBinding:
    prefix: --protonated
- id: in_deprotonated
  doc: "Print out deprotonation fraction instead of protonation\nfraction in time\
    \ series data."
  type: boolean
  inputBinding:
    prefix: --deprotonated
- id: in_pka
  doc: "Print predicted pKas (via Henderson-Hasselbalch equation) in place\nof fraction\
    \ (de)protonated. NOT default behavior."
  type: boolean
  inputBinding:
    prefix: --pKa
- id: in_calc_pka
  doc: Triggers the calcpka-style output [On by default]
  type: boolean
  inputBinding:
    prefix: --calcpka
- id: in_no_calc_pka
  doc: Turns off the calcpka-style output
  type: boolean
  inputBinding:
    prefix: --no-calcpka
- id: in_running_avg
  doc: "Defines a window size for a moving, running average\ntime series. <WINDOW>\
    \ is the number of MD steps (NOT\nthe number of MC exchange attempts)."
  type: long
  inputBinding:
    prefix: --running-avg
- id: in_chunk
  doc: "Computes the time series data over a chunk of the\nsimulation of size <WINDOW>\
    \ time steps. See above for\ndetails."
  type: long
  inputBinding:
    prefix: --chunk
- id: in_cumulative
  doc: "Computes the cumulative average time series data (see above\nfor options)\
    \ over the course of the trajectory."
  type: boolean
  inputBinding:
    prefix: --cumulative
- id: in_fix_re_md
  doc: "This option will trigger cphstats to reassemble the\ntitration data into pH-specific\
    \ ensembles. This\nis an exclusive mode of the program---no other\nanalyses will\
    \ be done."
  type: string
  inputBinding:
    prefix: --fix-remd
- id: in_conditional
  doc: "Evaluates conditional probabilities. CONDITIONAL should be a\nstring of the\
    \ format:\n<resid>:<state>,<resid>:<state>,...\nor\n<resid>:PROT,<resid>:DEPROT,...\n\
    or\n<resid>:<state1>;<state2>,<resid>:PROT,...\nWhere <resid> is the residue number\
    \ in the prmtop (NOT the\ncpin) and <state> is either the state number or (p)rotonated\n\
    or (d)eprotonated, case-insensitive"
  type: long
  inputBinding:
    prefix: --conditional
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_running_avg_out
  doc: "Output file where the running averages of time series\ndata for each residue\
    \ is printed (see [Output Options]\nbelow for details). Default is [running_avgs.dat]"
  type: File
  outputBinding:
    glob: $(inputs.in_running_avg_out)
- id: out_chunk_out
  doc: "Output file where the time series data calculated\nover chunks of the simulation\
    \ are printed (see\n[Output Options] below for details).\nDefault is [chunk.dat]"
  type: File
  outputBinding:
    glob: $(inputs.in_chunk_out)
- id: out_cumulative_out
  doc: "Output file where the cumulative time series data\nis printed (see [Output\
    \ Options] below for details).\nDefault is [cumulative.dat]"
  type: File
  outputBinding:
    glob: $(inputs.in_cumulative_out)
- id: out_population
  doc: "Output file where protonation state populations are\nprinted for every state\
    \ of every residue."
  type: File
  outputBinding:
    glob: $(inputs.in_population)
- id: out_conditional_output
  doc: "Output file with requested conditional probabilities.\nDefault is [conditional_prob.dat]."
  type: File
  outputBinding:
    glob: $(inputs.in_conditional_output)
- id: out_verbose
  doc: "Controls how much information is printed to the\ncalcpka-style output file.\
    \ Options are:\n(0) Just print fraction protonated. [Default]\n(1) Print everything\
    \ calcpka prints."
  type: File
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- cphstats
