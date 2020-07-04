version 1.0

task RemoveTradisTags {
  input {
    File? f
    String remove_tags
  }
  command <<<
    remove_tradis_tags \
      ~{remove_tags} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    remove_tags: ""
  }
}