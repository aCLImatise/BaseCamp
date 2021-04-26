version 1.0

task CooltoolsGenomeFetchchromsizes {
  input {
    String db
  }
  command <<<
    cooltools genome fetch_chromsizes \
      ~{db}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}