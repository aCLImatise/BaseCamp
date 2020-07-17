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
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Suppress logging messages"
    input_viral_sequences: "Input viral sequences in FASTA format"
    output_directory: "Output directory"
  }
}