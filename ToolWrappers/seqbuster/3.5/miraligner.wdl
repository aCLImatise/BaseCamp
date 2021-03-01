version 1.0

task Miraligner {
  input {
    Boolean? add
    Boolean? format
    Boolean? freq
    Boolean? three_letter_code
    Boolean? sub
    Boolean? trim
    String help
    String version
  }
  command <<<
    miraligner \
      ~{help} \
      ~{version} \
      ~{if (add) then "-add" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (freq) then "-freq" else ""} \
      ~{if (three_letter_code) then "-s" else ""} \
      ~{if (sub) then "-sub" else ""} \
      ~{if (trim) then "-trim" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add: "nt allowed for addition processes\\nDefault: 3"
    format: "format input\\nDefault: none"
    freq: "add freq information\\nDefault: true"
    three_letter_code: "three letter code for species"
    sub: "nt allowed for substitution processes\\nDefault: 1"
    trim: "nt allowed for trimming processes\\nDefault: 3"
    help: "Default: false"
    version: "Default: false"
  }
  output {
    File out_stdout = stdout()
  }
}