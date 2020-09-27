version 1.0

task SmofWc {
  input {
    Boolean? chars
    Boolean? lines
    String input_fasta_default
  }
  command <<<
    smof wc \
      ~{input_fasta_default} \
      ~{if (chars) then "--chars" else ""} \
      ~{if (lines) then "--lines" else ""}
  >>>
  parameter_meta {
    chars: "writes the summed length of all sequences"
    lines: "writes the total number of sequences"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}