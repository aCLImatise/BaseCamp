version 1.0

task Monoxmltool {
  input {
    File? validate
  }
  command <<<
    mono_xmltool \
      ~{if (validate) then "--validate" else ""}
  >>>
  parameter_meta {
    validate: "[*.rng | *.rnc | *.nvdl | *.xsd] [instances]\\n--validate-rng relax-ng-grammar-xml [instances]\\n--validate-rnc relax-ng-compact-grammar-file [instances]\\n--validate-nvdl nvdl-script-xml [instances]\\n--validate-xsd xml-schema [instances]\\n--validate-xsd2 xml-schema [instances] (in .NET 2.0 validator)\\n--validate-dtd instances\\n--transform stylesheet instance-xml [output-xml]\\n--prettyprint [source] [result]"
  }
  output {
    File out_stdout = stdout()
    File out_validate = "${in_validate}"
  }
}