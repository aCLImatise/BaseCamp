version 1.0

task TdbQuery {
  input {
    Boolean? root
    Boolean? check
    Boolean? strict
    String? release
    Boolean? no_blank
    Boolean? one_line
    Boolean? no_comp_sub
    String? short_label_length
    String? long_label_length
  }
  command <<<
    tdbQuery \
      ~{if (root) then "-root" else ""} \
      ~{if (check) then "-check" else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""} \
      ~{if (no_blank) then "-noBlank" else ""} \
      ~{if (one_line) then "-oneLine" else ""} \
      ~{if (no_comp_sub) then "-noCompSub" else ""} \
      ~{if defined(short_label_length) then ("-shortLabelLength " +  '"' + short_label_length + '"') else ""} \
      ~{if defined(long_label_length) then ("-longLabelLength " +  '"' + long_label_length + '"') else ""}
  >>>
  parameter_meta {
    root: "=/path/to/trackDb/root/dir"
    check: ""
    strict: ""
    release: "|beta|public"
    no_blank: ""
    one_line: ""
    no_comp_sub: ""
    short_label_length: ""
    long_label_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}