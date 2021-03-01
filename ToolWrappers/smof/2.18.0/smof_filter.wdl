version 1.0

task SmofFilter {
  input {
    Int? shorter_than
    Int? longer_than
    Float? composition
    String input_fasta_sequence
  }
  command <<<
    smof filter \
      ~{input_fasta_sequence} \
      ~{if defined(shorter_than) then ("--shorter-than " +  '"' + shorter_than + '"') else ""} \
      ~{if defined(longer_than) then ("--longer-than " +  '"' + longer_than + '"') else ""} \
      ~{if defined(composition) then ("--composition " +  '"' + composition + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    shorter_than: "keep only if length is less than or equal to LEN"
    longer_than: "keep only if length is greater than or equal to LEN"
    composition: "keep only if composition meets the condition (e.g. 'GC\\n> .5')\\n"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}