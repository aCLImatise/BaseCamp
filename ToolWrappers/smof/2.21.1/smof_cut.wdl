version 1.0

task SmofCut {
  input {
    String? fields
    Boolean? complement
    String input_fasta_sequence
  }
  command <<<
    smof cut \
      ~{input_fasta_sequence} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (complement) then "--complement" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    fields: "Indices to print, comma delimited, with ranges"
    complement: "Invert selection"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}