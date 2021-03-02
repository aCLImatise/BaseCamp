version 1.0

task Txt2mzml {
  input {
    String file_in
    String file_out
  }
  command <<<
    txt2mzml \
      ~{file_in} \
      ~{file_out}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    file_in: ""
    file_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}