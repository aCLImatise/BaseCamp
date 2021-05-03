version 1.0

task Bamfastexploderef {
  command <<<
    bamfastexploderef
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0"
  }
  output {
    File out_stdout = stdout()
  }
}