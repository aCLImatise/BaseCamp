version 1.0

task FastaUniqueNames {
  input {
    String? r
  }
  command <<<
    fasta-unique-names \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
  }
}