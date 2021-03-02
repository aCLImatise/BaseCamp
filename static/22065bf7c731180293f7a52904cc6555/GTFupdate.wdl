version 1.0

task GTFupdate {
  input {
    String gtf_file
  }
  command <<<
    GTFupdate \
      ~{gtf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1"
  }
  parameter_meta {
    gtf_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}