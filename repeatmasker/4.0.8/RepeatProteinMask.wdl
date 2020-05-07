version 1.0

task RepeatProteinMask {
  input {
    Boolean noNoLowSimple
  }
  command <<<
    RepeatProteinMask \
      ~{true="-noLowSimple" false="" noNoLowSimple}
  >>>
}