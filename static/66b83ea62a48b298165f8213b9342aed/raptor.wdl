version 1.0

task Raptor {
  input {
    Boolean? advanced_help
    Boolean? copyright
    Boolean? export_help
    Boolean? version_check
  }
  command <<<
    raptor \
      ~{if (advanced_help) then "--advanced-help" else ""} \
      ~{if (copyright) then "--copyright" else ""} \
      ~{if (export_help) then "--export-help" else ""} \
      ~{if (version_check) then "--version-check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/raptor:1.1.0--hb7ba0dd_0"
  }
  parameter_meta {
    advanced_help: "Prints the help page including advanced options."
    copyright: "Prints the copyright/license information."
    export_help: "(std::string)\\nExport the help page information. Value must be one of [html, man]."
    version_check: "(bool)\\nWhether to to check for the newest app version. Default: 1."
  }
  output {
    File out_stdout = stdout()
  }
}