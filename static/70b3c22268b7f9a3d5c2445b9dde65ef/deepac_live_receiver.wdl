version 1.0

task DeepacliveReceiver {
  input {
    Int? read_length
    String? seq_cycles
    String? format
    String? barcodes
    String? deepac_command_use
    Boolean? custom
    File? model
    Int? n_cpus_rec
    Array[String] gpus
    String? threshold
    Directory? receiver_input
    Directory? receiver_output
    Boolean? discard_neg
  }
  command <<<
    deepac_live receiver \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(seq_cycles) then ("--seq-cycles " +  '"' + seq_cycles + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(deepac_command_use) then ("--command " +  '"' + deepac_command_use + '"') else ""} \
      ~{if (custom) then "--custom" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(n_cpus_rec) then ("--n-cpus-rec " +  '"' + n_cpus_rec + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(receiver_input) then ("--receiver-input " +  '"' + receiver_input + '"') else ""} \
      ~{if defined(receiver_output) then ("--receiver-output " +  '"' + receiver_output + '"') else ""} \
      ~{if (discard_neg) then "--discard-neg" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepaclive:0.3.2--py_0"
  }
  parameter_meta {
    read_length: "Expected read length"
    seq_cycles: "Comma-separated list of sequencing cycles to analyze."
    format: "Format of temp files. bam or fasta."
    barcodes: "Comma-separated list of barcodes of samples to\\nanalyze. Default: \\\"undetermined\\\""
    deepac_command_use: "DeePaC command to use (switches builtin models)."
    custom: "Use a custom model."
    model: "Model to use. \\\"rapid\\\", \\\"sensitive\\\" or custom .h5 file."
    n_cpus_rec: "Number of cores used by the receiver. Default: all"
    gpus: "GPU devices to use (comma-separated). Default: all"
    threshold: "Classification threshold."
    receiver_input: "Receiver input directory."
    receiver_output: "Receiver output directory."
    discard_neg: "Don't save predictions for nonpathogenic reads."
  }
  output {
    File out_stdout = stdout()
    Directory out_receiver_output = "${in_receiver_output}"
  }
}