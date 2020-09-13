version 1.0

task SmofCut {
  input {
    String? fields
    Boolean? complement
    String input_fasta_default
  }
  command <<<
    smof cut \
      ~{input_fasta_default} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (complement) then "--complement" else ""}
  >>>
  parameter_meta {
    fields: "Indices to print, comma delimited, with ranges"
    complement: "Invert selection"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}