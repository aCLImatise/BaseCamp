version 1.0

task Tr {
  input {
    Boolean? complement
    Boolean? delete
    Boolean? squeeze_repeats
    Boolean? truncate_set_one
    String? option
  }
  command <<<
    tr \
      ~{option} \
      ~{true="--complement" false="" complement} \
      ~{true="--delete" false="" delete} \
      ~{true="--squeeze-repeats" false="" squeeze_repeats} \
      ~{true="--truncate-set1" false="" truncate_set_one}
  >>>
  parameter_meta {
    complement: "use the complement of SET1"
    delete: "delete characters in SET1, do not translate"
    squeeze_repeats: "replace each sequence of a repeated character that is listed in the last specified SET, with a single occurrence of that character"
    truncate_set_one: "first truncate SET1 to length of SET2"
    option: ""
  }
}