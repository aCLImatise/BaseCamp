version 1.0

task Miraligner {
  input {
    Boolean? add
    Boolean? db
    Boolean? format
    Boolean? freq
    Boolean? i
    Boolean? three_letter_code
    Boolean? sub
    Boolean? trim
    Boolean? v
    String database
    String help
    String minl
    Int one_six
    String pre
    String version
  }
  command <<<
    miraligner \
      ~{database} \
      ~{help} \
      ~{minl} \
      ~{one_six} \
      ~{pre} \
      ~{version} \
      ~{if (add) then "-add" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (freq) then "-freq" else ""} \
      ~{if (i) then "-i" else ""} \
      ~{if (three_letter_code) then "-s" else ""} \
      ~{if (sub) then "-sub" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    add: "nt allowed for addition processes\\nDefault: 3"
    db: ""
    format: "format input\\nDefault: none"
    freq: "add freq information\\nDefault: true"
    i: ""
    three_letter_code: "three letter code for species"
    sub: "nt allowed for substitution processes\\nDefault: 1"
    trim: "nt allowed for trimming processes\\nDefault: 3"
    v: ""
    database: "-debug"
    help: "Default: false"
    minl: "-minl"
    one_six: "-o"
    pre: "-pre"
    version: "Default: false"
  }
  output {
    File out_stdout = stdout()
  }
}