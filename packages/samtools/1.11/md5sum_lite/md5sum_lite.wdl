version 1.0

task Md5sumlite {
  command <<<
    md5sum_lite
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  output {
    File out_stdout = stdout()
  }
}