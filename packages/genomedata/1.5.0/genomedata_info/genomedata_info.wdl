version 1.0

task Genomedatainfo {
  command <<<
    genomedata_info
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  output {
    File out_stdout = stdout()
  }
}