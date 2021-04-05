version 1.0

task Bamcat {
  command <<<
    bamcat
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}