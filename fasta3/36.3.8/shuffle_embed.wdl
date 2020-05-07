version 1.0

task ShuffleEmbed.pl {
  input {
    Boolean helpHelp
    Boolean insertInsert
    Boolean nN
    Boolean windowWindow
  }
  command <<<
    shuffle_embed.pl \
      ~{true="--help" false="" helpHelp} \
      ~{true="--insert" false="" insertInsert} \
      ~{true="--n" false="" nN} \
      ~{true="--window" false="" windowWindow}
  >>>
}