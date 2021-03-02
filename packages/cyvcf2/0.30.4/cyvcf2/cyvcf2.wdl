version 1.0

task Cyvcf2 {
  command <<<
    cyvcf2
  >>>
  runtime {
    docker: "quay.io/biocontainers/cyvcf2:0.30.4--py36he01d083_0"
  }
  output {
    File out_stdout = stdout()
  }
}