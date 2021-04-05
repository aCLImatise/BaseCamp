version 1.0

task Bamauxmerge2 {
  command <<<
    bamauxmerge2
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}