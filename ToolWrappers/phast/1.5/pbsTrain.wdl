version 1.0

task PbsTrain {
  input {
    File? suff_stats
    Int? nbytes
    Int? nrows
    Boolean? no_greedy
    File? no_train
    File? log
    String dimension_dot
    Int size_dot
  }
  command <<<
    pbsTrain \
      ~{dimension_dot} \
      ~{size_dot} \
      ~{if defined(suff_stats) then ("--suff-stats " +  '"' + suff_stats + '"') else ""} \
      ~{if defined(nbytes) then ("--nbytes " +  '"' + nbytes + '"') else ""} \
      ~{if defined(nrows) then ("--nrows " +  '"' + nrows + '"') else ""} \
      ~{if (no_greedy) then "--no-greedy" else ""} \
      ~{if defined(no_train) then ("--no-train " +  '"' + no_train + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    suff_stats: "Output is a code file that can be used with"
    nbytes: "Number of bytes per encoded probabilistic base (default 1).\\nThe size of the code will be 256^b - 1 (one letter in the code\\nis reserved for gaps).  Values as large as 4 are allowed for\\nb, but in the current implementation, performance\\nconsiderations effectively limit it to 2 or 3."
    nrows: "Number of \\\"rows\\\" per dimension in the simplex grid.  Default\\nis maximum possible for code size."
    no_greedy: "Skip greedy optimization -- just assign a single\\nrepresentative point to each region of the probability\\nsimplex, equal to the (weighted) mean of all vectors from the\\ntraining data that fall in that region."
    no_train: "Ignore the data entirely; just use the centroid of each\\nsimplex partition.  The dimension of the simplex must be given\\n(<dim>) but no data file is required."
    log: "write log of optimization procedure to specified file."
    dimension_dot: "By default, n is given the largest possible value such"
    size_dot: "EXAMPLES:"
  }
  output {
    File out_stdout = stdout()
    File out_suff_stats = "${in_suff_stats}"
  }
}