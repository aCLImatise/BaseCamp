version 1.0

task AddTradisTags {
  input {
    File bB
    String? addAddTags
  }
  command <<<
    add_tradis_tags \
      ~{addAddTags} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}