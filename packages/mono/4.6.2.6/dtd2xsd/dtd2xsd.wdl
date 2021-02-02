version 1.0

task Dtd2xsd {
  input {
    String instance_xml_file
    String? output_xsd_file
  }
  command <<<
    dtd2xsd \
      ~{instance_xml_file} \
      ~{output_xsd_file}
  >>>
  parameter_meta {
    instance_xml_file: ""
    output_xsd_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}