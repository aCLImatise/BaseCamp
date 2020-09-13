version 1.0

task Permview {
  input {
    File? output_information_specified
    Boolean? decl
    Boolean? xml
    String assembly
  }
  command <<<
    permview \
      ~{assembly} \
      ~{if defined(output_information_specified) then ("-output " +  '"' + output_information_specified + '"') else ""} \
      ~{if (decl) then "-decl" else ""} \
      ~{if (xml) then "-xml" else ""}
  >>>
  parameter_meta {
    output_information_specified: "Output information into specified file."
    decl: "Show declarative security attributes on classes and methods."
    xml: "Output in XML format"
    assembly: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_information_specified = "${in_output_information_specified}"
  }
}