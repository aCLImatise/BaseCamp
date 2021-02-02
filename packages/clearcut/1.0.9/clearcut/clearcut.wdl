version 1.0

task Clearcut {
  input {
    Boolean? verbose
    Boolean? quiet
    String? seed
    Boolean? no_random
    Boolean? shuffle
    Boolean? neighbor
    Boolean? stdin
    Boolean? distance
    Boolean? alignment
    Boolean? dna
    Boolean? protein
    Boolean? jukes
    Boolean? kimura
    Boolean? stdout
    File? matrix_out
    Int? n_trees
    Boolean? exp_blen
    Boolean? exp_dist
    File? out
    File? in
  }
  command <<<
    clearcut \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (no_random) then "--norandom" else ""} \
      ~{if (shuffle) then "--shuffle" else ""} \
      ~{if (neighbor) then "--neighbor" else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if (jukes) then "--jukes" else ""} \
      ~{if (kimura) then "--kimura" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(matrix_out) then ("--matrixout " +  '"' + matrix_out + '"') else ""} \
      ~{if defined(n_trees) then ("--ntrees " +  '"' + n_trees + '"') else ""} \
      ~{if (exp_blen) then "--expblen" else ""} \
      ~{if (exp_dist) then "--expdist" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  parameter_meta {
    verbose: "More output. (Default: OFF)"
    quiet: "Silent operation. (Default: ON)"
    seed: "Explicitly set the PRNG seed to a specific value."
    no_random: "Attempt joins deterministically.  (Default: OFF)"
    shuffle: "Randomly shuffle the distance matrix.  (Default: OFF)"
    neighbor: "Use traditional Neighbor-Joining algorithm. (Default: OFF)"
    stdin: "Read input from STDIN."
    distance: "Input file is a distance matrix. (Default: ON)"
    alignment: "Input file is a set of aligned sequences. (Default: OFF)"
    dna: "Input alignment are DNA sequences."
    protein: "Input alignment are protein sequences."
    jukes: "Use Jukes-Cantor correction for computing distance matrix."
    kimura: "Use Kimura correction for distance matrix."
    stdout: "Output tree to STDOUT."
    matrix_out: "Output distance matrix to specified file."
    n_trees: "Output n trees.  (Default: 1)"
    exp_blen: "Exponential notation for branch lengths. (Default: OFF)"
    exp_dist: "Exponential notation in distance output. (Default: OFF)"
    out: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
    File out_matrix_out = "${in_matrix_out}"
    File out_out = "${in_out}"
  }
}