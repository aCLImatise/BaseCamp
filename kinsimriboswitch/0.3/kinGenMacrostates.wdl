version 1.0

task KinGenMacrostates {
  input {
    Boolean? energy_band_width
    Boolean? minimal_barrier_height
    Boolean? folding_temperature_performed
    Boolean? allows_lonely_pairs
    Boolean? remove_disconnected_structures
    File? file_containing_structures
    Boolean? let_barriers_output
    Boolean? number_threads_sorting
    Boolean? hard_constraint_enumerate
    File? write_name_output
    Boolean? force_run_exists
    String kin_sim
    String? args
    String sequence_dot_fast_a
  }
  command <<<
    kinGenMacrostates \
      ~{kin_sim} \
      ~{args} \
      ~{sequence_dot_fast_a} \
      ~{if (energy_band_width) then "-E" else ""} \
      ~{if (minimal_barrier_height) then "-m" else ""} \
      ~{if (folding_temperature_performed) then "-T" else ""} \
      ~{if (allows_lonely_pairs) then "-l" else ""} \
      ~{if (remove_disconnected_structures) then "-r" else ""} \
      ~{if (file_containing_structures) then "-a" else ""} \
      ~{if (let_barriers_output) then "-c" else ""} \
      ~{if (number_threads_sorting) then "-t" else ""} \
      ~{if (hard_constraint_enumerate) then "-C" else ""} \
      ~{if (write_name_output) then "-O" else ""} \
      ~{if (force_run_exists) then "-f" else ""}
  >>>
  parameter_meta {
    energy_band_width: ":     energy band width (in kcal) in which structures are completely\\nenumerated (15)"
    minimal_barrier_height: ":     minimal barrier height (barriers --minh) (1)\\nMinima seperated from their respective father by a lower\\nbarrier are merged with it."
    folding_temperature_performed: ":     folding temperature at which the simulation is performed"
    allows_lonely_pairs: ":     Allows lonely pairs. By default, only \\\"canonical\\\" structures\\n(i.e. such without any lonely pairs) are generated."
    remove_disconnected_structures: ":     remove disconnected structures (i.e. not reachable from mfe)\\ninstead of trying to connect them with the findpath heuristic"
    file_containing_structures: ":     file containing additional structures to be included into the\\nsimulation, e.g. waterfall output"
    let_barriers_output: "Let barriers output a list of contact / transient states, ie those\\nhaving a neighbor in a different basin."
    number_threads_sorting: ":     number of threads for sorting of additionally added structures [4]"
    hard_constraint_enumerate: ":     Hard constraint on the structures to enumerate, e.g. to\\nenumerate only structures containing a defined binding pocket.\\nThe constraint needs to be placed in the input file below the\\nsequence using ViennaRNAs constraint notation:\\nx - unpaired base, () - forced base pair, . - no constraint"
    write_name_output: ":     Write the name of the output macrostate file to the file\\n\\\"kinGenMacrostates_outfile.tmp\\\""
    force_run_exists: ":     Force run, even if a lock file exists. If a lock file is found\\nand -f is not given, the user is promted to confirm the run."
    kin_sim: ""
    args: ""
    sequence_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_containing_structures = "${in_file_containing_structures}"
    File out_write_name_output = "${in_write_name_output}"
  }
}