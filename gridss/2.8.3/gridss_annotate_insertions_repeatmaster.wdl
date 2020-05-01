version 1.0

task GridssAnnotateInsertionsRepeatmaster {
  input {
    Boolean optsOpts
    Boolean inputInput
    Boolean outputOutput
    Boolean repeatmaskerRepeatmasker
    Boolean scriptScriptDir
  }
  command <<<
    gridss_annotate_insertions_repeatmaster \
      ~{true="--opts" false="" optsOpts} \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--repeatmasker" false="" repeatmaskerRepeatmasker} \
      ~{true="--scriptdir" false="" scriptScriptDir}
  >>>
}