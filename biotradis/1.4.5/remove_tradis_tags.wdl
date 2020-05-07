version 1.0

task RemoveTradisTags {
  input {
    File fF
    String? removeRemoveTags
  }
  command <<<
    remove_tradis_tags \
      ~{removeRemoveTags} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}