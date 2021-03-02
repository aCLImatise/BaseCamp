version 1.0

task DeepacstrainFilter {
  input {
    Boolean? potentials
    File? output_file_path
    String? std
    Int? precision
    String? t
    String input_file_path
    String predictions
  }
  command <<<
    deepac_strain filter \
      ~{input_file_path} \
      ~{predictions} \
      ~{if (potentials) then "--potentials" else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(std) then ("--std " +  '"' + std + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    potentials: "Print pathogenic potential values in .fasta headers."
    output_file_path: "Output file path [.fasta]."
    std: "Standard deviations of predictions if MC dropout used."
    precision: "Format pathogenic potentials to given precision\\n[default=3].\\n"
    t: ""
    input_file_path: "Input file path [.fasta]."
    predictions: "Predictions in matching order [.npy]."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}