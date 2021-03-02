version 1.0

task Monoxmltool {
  input {
    Boolean? validate
    String? validate_rng
    File? validate_rnc
    String? validate_nv_dl
    String? validate_xsd
    Int? validate_xsd_two
    String? validate_dtd
    Boolean? pretty_print
  }
  command <<<
    mono_xmltool \
      ~{if (validate) then "--validate" else ""} \
      ~{if defined(validate_rng) then ("--validate-rng " +  '"' + validate_rng + '"') else ""} \
      ~{if defined(validate_rnc) then ("--validate-rnc " +  '"' + validate_rnc + '"') else ""} \
      ~{if defined(validate_nv_dl) then ("--validate-nvdl " +  '"' + validate_nv_dl + '"') else ""} \
      ~{if defined(validate_xsd) then ("--validate-xsd " +  '"' + validate_xsd + '"') else ""} \
      ~{if defined(validate_xsd_two) then ("--validate-xsd2 " +  '"' + validate_xsd_two + '"') else ""} \
      ~{if defined(validate_dtd) then ("--validate-dtd " +  '"' + validate_dtd + '"') else ""} \
      ~{if (pretty_print) then "--prettyprint" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    validate: "[*.rng | *.rnc | *.nvdl | *.xsd] [instances]"
    validate_rng: "[instances]"
    validate_rnc: "[instances]"
    validate_nv_dl: "[instances]"
    validate_xsd: "[instances]"
    validate_xsd_two: "[instances] (in .NET 2.0 validator)"
    validate_dtd: "instance-xml [output-xml]"
    pretty_print: "[source] [result]"
  }
  output {
    File out_stdout = stdout()
  }
}