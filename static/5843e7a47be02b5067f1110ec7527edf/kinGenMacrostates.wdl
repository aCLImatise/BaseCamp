version 1.0

task KinGenMacrostates {
  input {
    Boolean? energy_band_width
    Boolean? minimal_barrier_height
    Boolean? folding_temperature_performed
    Boolean? allows_lonely_pairs
    Boolean? remove_disconnected_structures
    Boolean? file_containing_structures
    Boolean? let_barriers_output
    Boolean? number_threads_sorting
    Boolean? hard_constraint_enumerate
    Boolean? write_name_output
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
      ~{true="-E" false="" energy_band_width} \
      ~{true="-m" false="" minimal_barrier_height} \
      ~{true="-T" false="" folding_temperature_performed} \
      ~{true="-l" false="" allows_lonely_pairs} \
      ~{true="-r" false="" remove_disconnected_structures} \
      ~{true="-a" false="" file_containing_structures} \
      ~{true="-c" false="" let_barriers_output} \
      ~{true="-t" false="" number_threads_sorting} \
      ~{true="-C" false="" hard_constraint_enumerate} \
      ~{true="-O" false="" write_name_output} \
      ~{true="-f" false="" force_run_exists}
  >>>
  parameter_meta {
    energy_band_width: ":     energy band width (in kcal) in which structures are completely enumerated (15)"
    minimal_barrier_height: ":     minimal barrier height (barriers --minh) (1) Minima seperated from their respective father by a lower barrier are merged with it."
    folding_temperature_performed: ":     folding temperature at which the simulation is performed"
    allows_lonely_pairs: ":     Allows lonely pairs. By default, only \"canonical\" structures (i.e. such without any lonely pairs) are generated."
    remove_disconnected_structures: ":     remove disconnected structures (i.e. not reachable from mfe) instead of trying to connect them with the findpath heuristic"
    file_containing_structures: ":     file containing additional structures to be included into the simulation, e.g. waterfall output"
    let_barriers_output: "Let barriers output a list of contact / transient states, ie those having a neighbor in a different basin."
    number_threads_sorting: ":     number of threads for sorting of additionally added structures [4]"
    hard_constraint_enumerate: ":     Hard constraint on the structures to enumerate, e.g. to enumerate only structures containing a defined binding pocket. The constraint needs to be placed in the input file below the sequence using ViennaRNAs constraint notation: x - unpaired base, () - forced base pair, . - no constraint"
    write_name_output: ":     Write the name of the output macrostate file to the file \"kinGenMacrostates_outfile.tmp\""
    force_run_exists: ":     Force run, even if a lock file exists. If a lock file is found and -f is not given, the user is promted to confirm the run."
    kin_sim: ""
    args: ""
    sequence_dot_fast_a: ""
  }
}