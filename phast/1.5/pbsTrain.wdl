version 1.0

task PbsTrain {
  input {
    String? nrows
    String? nbytes
    Boolean? no_greedy
    String? no_train
    File? log
    File file_dot_stats
  }
  command <<<
    pbsTrain \
      ~{file_dot_stats} \
      ~{if defined(nrows) then ("--nrows " +  '"' + nrows + '"') else ""} \
      ~{if defined(nbytes) then ("--nbytes " +  '"' + nbytes + '"') else ""} \
      ~{true="--no-greedy" false="" no_greedy} \
      ~{if defined(no_train) then ("--no-train " +  '"' + no_train + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    nrows: "Number of \"rows\" per dimension in the simplex grid.  Default is maximum possible for code size."
    nbytes: "Number of bytes per encoded probabilistic base (default 1). The size of the code will be 256^b - 1 (one letter in the code is reserved for gaps).  Values as large as 4 are allowed for b, but in the current implementation, performance considerations effectively limit it to 2 or 3."
    no_greedy: "Skip greedy optimization -- just assign a single representative point to each region of the probability simplex, equal to the (weighted) mean of all vectors from the training data that fall in that region."
    no_train: "Ignore the data entirely; just use the centroid of each simplex partition.  The dimension of the simplex must be given (<dim>) but no data file is required."
    log: "write log of optimization procedure to specified file."
    file_dot_stats: ""
  }
}