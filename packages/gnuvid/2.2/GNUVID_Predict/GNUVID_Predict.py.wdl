version 1.0

task GNUVIDPredictpy {
  input {
    Directory? output_folder
    Int? min_len
    Float? n_max
    Int? block_pred
    Boolean? exact_matching
    File? individual
    Boolean? force
    Boolean? quiet
  }
  command <<<
    GNUVID_Predict_py \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(n_max) then ("--n_max " +  '"' + n_max + '"') else ""} \
      ~{if defined(block_pred) then ("--block_pred " +  '"' + block_pred + '"') else ""} \
      ~{if (exact_matching) then "--exact_matching" else ""} \
      ~{if (individual) then "--individual" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    output_folder: "Output folder and prefix to be created for results\\n(default: timestamped GNUVID_results in the current\\ndirectory)"
    min_len: "minimum sequence length [Default: 15000]"
    n_max: "maximum proportion of ambiguity (Ns) allowed [Default:\\n0.5]"
    block_pred: "prediction block size, good for limited memory\\n[Default: 1000]"
    exact_matching: "turn off exact matching (no allele will be identified\\nfor each ORF) and only use machine learning prediction\\n[default: False]"
    individual: "Individual Output file for each genome showing the\\nallele sequence and GNU score for each gene allele"
    force: "Force overwriting existing results folder assigned\\nwith -o (default: off)"
    quiet: "No screen output [default OFF]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_individual = "${in_individual}"
  }
}