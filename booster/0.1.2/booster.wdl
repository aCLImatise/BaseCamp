version 1.0

task Booster {
  input {
    Boolean? input_tree_file
    Boolean? boot
    File? out
    File? out_raw
    Boolean? num_threads
    File? stat_file
    Boolean? count_per_branch
    Boolean? dist_cut_off
    Boolean? algo
    Boolean? quiet
  }
  command <<<
    booster \
      ~{if (input_tree_file) then "--input" else ""} \
      ~{if (boot) then "--boot" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (out_raw) then "--out-raw" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (stat_file) then "--stat-file" else ""} \
      ~{if (count_per_branch) then "--count-per-branch" else ""} \
      ~{if (dist_cut_off) then "--dist-cutoff" else ""} \
      ~{if (algo) then "--algo" else ""} \
      ~{if (quiet) then "--quiet" else ""}
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_raw = "${in_out_raw}"
    File out_stat_file = "${in_stat_file}"
  }
}