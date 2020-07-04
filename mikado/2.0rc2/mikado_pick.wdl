version 1.0

task MikadoPick {
  input {
    String? fast_a
  }
  command <<<
    mikado pick \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
  }
}