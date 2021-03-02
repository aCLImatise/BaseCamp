version 1.0

task FastxLengthTabpy {
  input {
    String? input_format_fasta
  }
  command <<<
    fastx_length_tab_py \
      ~{if defined(input_format_fasta) then ("-i " +  '"' + input_format_fasta + '"') else ""}
  >>>
  parameter_meta {
    input_format_fasta: "Input format (fasta)."
  }
  output {
    File out_stdout = stdout()
  }
}