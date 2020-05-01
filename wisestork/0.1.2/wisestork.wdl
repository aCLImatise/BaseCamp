version 1.0

task Wisestork {
  input {
    Boolean countCount
    Boolean gcGcCorrect
    Boolean zscoreZscore
    Boolean newNewRef
  }
  command <<<
    wisestork \
      ~{true="- count" false="" countCount} \
      ~{true="- gc-correct" false="" gcGcCorrect} \
      ~{true="- zscore" false="" zscoreZscore} \
      ~{true="- newref" false="" newNewRef}
  >>>
}