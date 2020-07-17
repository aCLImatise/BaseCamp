version 1.0

task Sreport {
  input {
    String? file_extension_mandatory
  }
  command <<<
    Sreport \
      ~{if defined(file_extension_mandatory) then ("-o " +  '"' + file_extension_mandatory + '"') else ""}
  >>>
  parameter_meta {
    file_extension_mandatory: "file (with NO extension). Mandatory option."
  }
}