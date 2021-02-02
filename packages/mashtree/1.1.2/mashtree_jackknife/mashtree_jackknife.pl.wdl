version 1.0

task MashtreeJackknifepl {
  input {
    File? out_matrix
    Boolean? reps
    Boolean? num_cpus
    Boolean? trunc_length
    Boolean? sort_order
    Boolean? min_depth
    Boolean? seed
    Boolean? save_sketches
  }
  command <<<
    mashtree_jackknife_pl \
      ~{if (out_matrix) then "--outmatrix" else ""} \
      ~{if (reps) then "--reps" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""} \
      ~{if (trunc_length) then "--truncLength" else ""} \
      ~{if (sort_order) then "--sort-order" else ""} \
      ~{if (min_depth) then "--mindepth" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (save_sketches) then "--save-sketches" else ""}
  >>>
  parameter_meta {
    out_matrix: "''   Output file for distance matrix"
    reps: "0    How many bootstrap repetitions to run;\\nIf zero, no bootstrapping."
    num_cpus: "1    This will be passed to mashtree and will\\nbe used to multithread reps."
    trunc_length: "250  How many characters to keep in a filename"
    sort_order: "ABC  For neighbor-joining, the sort order can\\nmake a difference. Options include:\\nABC (alphabetical), random, input-order"
    min_depth: "5    If mindepth is zero, then it will be\\nchosen in a smart but slower method,\\nto discard lower-abundance kmers."
    seed: "42   Seed for mash sketch"
    save_sketches: "''   If a directory is supplied, then sketches\\nwill be saved in it.\\nIf no directory is supplied, then sketches\\nwill be saved alongside source files.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_matrix = "${in_out_matrix}"
  }
}