version 1.0

task PF00225Fullblockstxt {
  command <<<
    PF00225_full_blocks_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  output {
    File out_stdout = stdout()
  }
}