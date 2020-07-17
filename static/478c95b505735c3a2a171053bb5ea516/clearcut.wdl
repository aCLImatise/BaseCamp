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
    String? n_trees
    Boolean? exp_blen
    Boolean? exp_dist
    String? in
    String? out
  }
  command <<<
    clearcut \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--norandom" false="" no_random} \
      ~{true="--shuffle" false="" shuffle} \
      ~{true="--neighbor" false="" neighbor} \
      ~{true="--stdin" false="" stdin} \
      ~{true="--distance" false="" distance} \
      ~{true="--alignment" false="" alignment} \
      ~{true="--DNA" false="" dna} \
      ~{true="--protein" false="" protein} \
      ~{true="--jukes" false="" jukes} \
      ~{true="--kimura" false="" kimura} \
      ~{true="--stdout" false="" stdout} \
      ~{if defined(matrix_out) then ("--matrixout " +  '"' + matrix_out + '"') else ""} \
      ~{if defined(n_trees) then ("--ntrees " +  '"' + n_trees + '"') else ""} \
      ~{true="--expblen" false="" exp_blen} \
      ~{true="--expdist" false="" exp_dist} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
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
    in: ""
    out: ""
  }
}