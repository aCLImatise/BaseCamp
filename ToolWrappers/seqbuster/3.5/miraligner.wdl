version 1.0

task Miraligner {
  input {
    Boolean? add
    Boolean? db
    Boolean? debug
    Boolean? format
    Boolean? freq
    Boolean? i
    Boolean? min_l
    Boolean? o
    Boolean? pre
    Boolean? three_letter_code
    Boolean? sub
    Boolean? trim
    Boolean? versiondefault_false
    String main_class
  }
  command <<<
    miraligner \
      ~{main_class} \
      ~{if (add) then "-add" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (freq) then "-freq" else ""} \
      ~{if (i) then "-i" else ""} \
      ~{if (min_l) then "-minl" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (pre) then "-pre" else ""} \
      ~{if (three_letter_code) then "-s" else ""} \
      ~{if (sub) then "-sub" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (versiondefault_false) then "-v" else ""}
  >>>
  parameter_meta {
    add: "nt allowed for addition processes\\nDefault: 3"
    db: "database"
    debug: "add verbosity\\nDefault: false"
    format: "format input\\nDefault: none"
    freq: "add freq information\\nDefault: true"
    i: "input"
    min_l: "minimum size\\nDefault: 16"
    o: "output"
    pre: "add reads mapping to precursor\\nDefault: false"
    three_letter_code: "three letter code for species"
    sub: "nt allowed for substitution processes\\nDefault: 1"
    trim: "nt allowed for trimming processes\\nDefault: 3"
    versiondefault_false: "version\\nDefault: false"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
  }
}