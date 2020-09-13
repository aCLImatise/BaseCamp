version 1.0

task Fastaclean {
  input {
    Boolean? help
    File? fast_a
    Boolean? protein
    Boolean? acgt_n
  }
  command <<<
    fastaclean \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if (acgt_n) then "--acgtn" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    protein: ""
    acgt_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}