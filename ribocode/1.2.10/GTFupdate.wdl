version 1.0

task GTFupdate {
  input {
    String gtf_file
  }
  command <<<
    GTFupdate \
      ~{gtf_file}
  >>>
  parameter_meta {
    gtf_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}