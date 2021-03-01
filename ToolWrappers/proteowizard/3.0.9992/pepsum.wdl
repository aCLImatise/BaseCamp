version 1.0

task Pepsum {
  input {
    String? pep_xml_filename
  }
  command <<<
    pepsum \
      ~{pep_xml_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    pep_xml_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}