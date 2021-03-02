version 1.0

task Cwl2wdl {
  input {
    String? format
    Boolean? validate
    File cwl_file
  }
  command <<<
    cwl2wdl \
      ~{cwl_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (validate) then "--validate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "specify the output format (default: wdl)"
    validate: "validate the resulting WDL code with PyWDL (default:\\nFalse)"
    cwl_file: "CWL file."
  }
  output {
    File out_stdout = stdout()
  }
}