version 1.0

task AutoXml {
  input {
    String? text_field
    String? comment
    Boolean? picky
    Boolean? main
    String? prefix
    String? positive
    File file_dot_dtd_x
    String root
  }
  command <<<
    autoXml \
      ~{file_dot_dtd_x} \
      ~{root} \
      ~{if defined(text_field) then ("-textField " +  '"' + text_field + '"') else ""} \
      ~{if defined(comment) then ("-comment " +  '"' + comment + '"') else ""} \
      ~{true="-picky" false="" picky} \
      ~{true="-main" false="" main} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(positive) then ("-positive " +  '"' + positive + '"') else ""}
  >>>
  parameter_meta {
    text_field: "what to name text between start/end tags. Default 'text'"
    comment: "Comment to appear at top of generated code files"
    picky: "Generate parser that rejects stuff it doesn't understand"
    main: "Put in a main routine that's a test harness"
    prefix: "Prefix to add to structure names. By default same as root"
    positive: "'t write out optional attributes with negative values"
    file_dot_dtd_x: ""
    root: ""
  }
}