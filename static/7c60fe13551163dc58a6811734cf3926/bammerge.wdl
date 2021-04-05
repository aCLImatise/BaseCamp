version 1.0

task Bammerge {
  command <<<
    bammerge
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}