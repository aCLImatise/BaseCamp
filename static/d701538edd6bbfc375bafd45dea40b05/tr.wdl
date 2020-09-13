version 1.0

task Tr {
  input {
    Boolean? complement
    Boolean? delete
    Boolean? squeeze_repeats
    Boolean? truncate_set_one
    Int char_one_char_two
  }
  command <<<
    tr \
      ~{char_one_char_two} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (squeeze_repeats) then "--squeeze-repeats" else ""} \
      ~{if (truncate_set_one) then "--truncate-set1" else ""}
  >>>
  parameter_meta {
    complement: "use the complement of SET1"
    delete: "delete characters in SET1, do not translate"
    squeeze_repeats: "replace each sequence of a repeated character\\nthat is listed in the last specified SET,\\nwith a single occurrence of that character"
    truncate_set_one: "first truncate SET1 to length of SET2"
    char_one_char_two: "all characters from CHAR1 to CHAR2 in ascending order"
  }
  output {
    File out_stdout = stdout()
  }
}