version 1.0

task GNUVIDPredictpy {
  input {
    Directory? output_folder
    File? individual
    Boolean? force
    Boolean? quiet
    Boolean? v
    String query_fna
  }
  command <<<
    GNUVID_Predict_py \
      ~{query_fna} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (individual) then "--individual" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.1--0"
  }
  parameter_meta {
    output_folder: "Output folder and prefix to be created for results\\n(default: timestamped GNUVID_results in the current\\ndirectory)"
    individual: "Individual Output file for each genome showing the\\nallele sequence and GNU score for each gene allele"
    force: "Force overwriting existing results folder assigned\\nwith -o (default: off)"
    quiet: "No screen output [default OFF]"
    v: ""
    query_fna: "Query Whole Genome Nucleotide FASTA file to analyze\\n(.fna)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_individual = "${in_individual}"
  }
}