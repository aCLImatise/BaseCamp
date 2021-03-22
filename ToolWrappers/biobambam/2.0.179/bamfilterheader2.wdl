version 1.0

task Bamfilterheader2 {
  command <<<
    bamfilterheader2
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}