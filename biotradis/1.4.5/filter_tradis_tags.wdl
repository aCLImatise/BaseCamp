version 1.0

task FilterTradisTags {
  input {
    File? b
    String? t
    String filter_tags
  }
  command <<<
    filter_tradis_tags \
      ~{filter_tags} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    t: ""
    filter_tags: ""
  }
}