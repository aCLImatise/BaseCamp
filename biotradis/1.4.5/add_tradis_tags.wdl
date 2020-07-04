version 1.0

task AddTradisTags {
  input {
    File? b
    String add_tags
  }
  command <<<
    add_tradis_tags \
      ~{add_tags} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    add_tags: ""
  }
}