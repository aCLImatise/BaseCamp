version 1.0

task SmofWc {
  input {
    Boolean? chars
    Boolean? lines
    String input_fasta_sequence
  }
  command <<<
    smof wc \
      ~{input_fasta_sequence} \
      ~{if (chars) then "--chars" else ""} \
      ~{if (lines) then "--lines" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    chars: "writes the summed length of all sequences"
    lines: "writes the total number of sequences"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}