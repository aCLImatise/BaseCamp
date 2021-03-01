version 1.0

task BreakContigsStart {
  input {
    Boolean? alignment
    Boolean? conti_glen
    Boolean? min_size
  }
  command <<<
    break_contigs_start \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (conti_glen) then "--contiglen" else ""} \
      ~{if (min_size) then "--min_size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  parameter_meta {
    alignment: "bed file for alignment (string)"
    conti_glen: "length of contigs (string)"
    min_size: "Minimum mate pair separation for error findng (int)"
  }
  output {
    File out_stdout = stdout()
  }
}