version 1.0

task CheckvQualitySummary {
  input {
    Boolean? quiet
    String input_viral_sequences
    String output_directory
  }
  command <<<
    checkv quality_summary \
      ~{input_viral_sequences} \
      ~{output_directory} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkv:0.7.0--py_1"
  }
  parameter_meta {
    quiet: "Suppress logging messages"
    input_viral_sequences: "Input viral sequences in FASTA format"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
  }
}