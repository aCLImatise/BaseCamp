version 1.0

task Psl2sampl {
  command <<<
    psl2sam_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  output {
    File out_stdout = stdout()
  }
}