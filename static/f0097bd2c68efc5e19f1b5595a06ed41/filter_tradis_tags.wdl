version 1.0

task FilterTradisTags {
  input {
    File bB
    String tT
    String? filterFilterTags
  }
  command <<<
    filter_tradis_tags \
      ~{filterFilterTags} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}