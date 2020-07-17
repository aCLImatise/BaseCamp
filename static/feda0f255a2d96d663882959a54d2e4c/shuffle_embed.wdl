version 1.0

task ShuffleEmbed.pl {
  input {
    Boolean? help
    String? insert
    String? number_of_shuffles
    Boolean? window
    File file_dot_seq
  }
  command <<<
    shuffle_embed.pl \
      ~{file_dot_seq} \
      ~{true="--help" false="" help} \
      ~{if defined(insert) then ("--insert " +  '"' + insert + '"') else ""} \
      ~{if defined(number_of_shuffles) then ("--n " +  '"' + number_of_shuffles + '"') else ""} \
      ~{true="--window" false="" window}
  >>>
  parameter_meta {
    help: "include description"
    insert: "shuffle only, do not insert unshuffled"
    number_of_shuffles: "number of shuffles"
    window: "size of shuffle window"
    file_dot_seq: ""
  }
}