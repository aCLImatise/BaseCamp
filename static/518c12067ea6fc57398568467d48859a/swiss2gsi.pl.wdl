version 1.0

task Swiss2gsipl {
  command <<<
    swiss2gsi_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/snoscan:1.0--pl526h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}