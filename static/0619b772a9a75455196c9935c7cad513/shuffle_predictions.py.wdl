version 1.0

task ShufflePredictionspy {
  input {
    File? path_input_directory
    File? outdir
    Int? rep
    Int? seed
    Boolean? v
  }
  command <<<
    shuffle_predictions_py \
      ~{if defined(path_input_directory) then ("--input " +  '"' + path_input_directory + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(rep) then ("--rep " +  '"' + rep + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  parameter_meta {
    path_input_directory: "Path to input directory."
    outdir: "Path to output directory."
    rep: "Number of shuffled replicates to create (default: 1)."
    seed: "Random seed: set this if you want reproducible\\nshufflings (default: None)."
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}