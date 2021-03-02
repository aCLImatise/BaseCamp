version 1.0

task ExoniphyDb2hintspl {
  command <<<
    exoniphyDb2hints_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  output {
    File out_stdout = stdout()
  }
}