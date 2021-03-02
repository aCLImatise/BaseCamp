version 1.0

task BreakContigs {
  input {
    Boolean? alignment
    Boolean? breakpoints
    Boolean? min_size
    Boolean? conti_glen
    Boolean? iteration
  }
  command <<<
    break_contigs \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (breakpoints) then "--breakpoints" else ""} \
      ~{if (min_size) then "--min_size" else ""} \
      ~{if (conti_glen) then "--contiglen" else ""} \
      ~{if (iteration) then "--iteration" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  parameter_meta {
    alignment: "bed file for alignment (string)"
    breakpoints: "breakpoints (string)"
    min_size: "Minimum mate pair separation for error findng (int)"
    conti_glen: "length of contigs (string)"
    iteration: "Iteration number (int)"
  }
  output {
    File out_stdout = stdout()
  }
}