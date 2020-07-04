version 1.0

task CheckTradisTags {
  input {
    File? b
    String check_tags
  }
  command <<<
    check_tradis_tags \
      ~{check_tags} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    check_tags: ""
  }
}