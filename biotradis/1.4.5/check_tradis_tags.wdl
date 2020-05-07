version 1.0

task CheckTradisTags {
  input {
    File bB
    String? checkCheckTags
  }
  command <<<
    check_tradis_tags \
      ~{checkCheckTags} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}