version 1.0

task RandomlySelectSequencespy {
  input {
    File outputprefix
    String positional_arguments
    File input_fastafastq_filename
    String output_prefix
    String subsample_size
  }
  command <<<
    randomly_select_sequences_py \
      ~{outputprefix} \
      ~{positional_arguments} \
      ~{input_fastafastq_filename} \
      ~{output_prefix} \
      ~{subsample_size}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    outputprefix: "output_prefix"
    positional_arguments: "positional arguments:"
    input_fastafastq_filename: "Input fasta/fastq filename"
    output_prefix: "Output file prefix"
    subsample_size: "Subsample size"
  }
  output {
    File out_stdout = stdout()
  }
}