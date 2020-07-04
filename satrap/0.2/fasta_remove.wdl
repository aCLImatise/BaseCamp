version 1.0

task FastaRemove {
  input {
    String? fast_a
    String? l
  }
  command <<<
    fasta_remove \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    l: ""
  }
}