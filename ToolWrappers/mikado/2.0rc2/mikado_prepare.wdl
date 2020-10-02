version 1.0

task MikadoPrepare {
  input {
    String? fast_a
    String gff
  }
  command <<<
    mikado prepare \
      ~{gff} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    gff: "Input GFF/GTF file(s)."
  }
  output {
    File out_stdout = stdout()
  }
}