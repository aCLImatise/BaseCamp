version 1.0

task Booster {
  input {
    Boolean? input_tree_file
    Boolean? boot
    Boolean? out
    Boolean? out_raw
    Boolean? num_threads
    Boolean? stat_file
    Boolean? count_per_branch
    Boolean? dist_cut_off
    Boolean? algo
    Boolean? quiet
  }
  command <<<
    booster \
      ~{true="--input" false="" input_tree_file} \
      ~{true="--boot" false="" boot} \
      ~{true="--out" false="" out} \
      ~{true="--out-raw" false="" out_raw} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--stat-file" false="" stat_file} \
      ~{true="--count-per-branch" false="" count_per_branch} \
      ~{true="--dist-cutoff" false="" dist_cut_off} \
      ~{true="--algo" false="" algo} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    input_tree_file: ": Input tree file"
    boot: ": Bootstrap tree file (1 file containing all bootstrap trees)"
    out: ": Output file (optional) with normalized support values, default : stdout"
    out_raw: ": Output file (optional) with raw support values in the form of id|avgdist|depth, default : none"
    num_threads: ": Number of threads (default 1)"
    stat_file: ": Prints output statistics for each branch in the given output file (optional)"
    count_per_branch: ": Prints individual taxa moves for each branches in the log file (only with -S & -a tbe)"
    dist_cut_off: ": Distance cutoff to consider a branch for taxa transfer index computation (-a tbe only, default 0.3)"
    algo: ": tbe or fbp (default tbe)"
    quiet: ": Does not print progress messages during analysis"
  }
}