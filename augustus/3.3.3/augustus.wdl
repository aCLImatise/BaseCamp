version 1.0

task Augustus {
  input {
    String? partialPartial
    Int? intronIntronLess
    String? completeComplete
    String? atAtLeastOne
    String? exactlyExactlyOne
  }
  command <<<
    augustus \
      ~{partialPartial} \
      ~{intronIntronLess} \
      ~{completeComplete} \
      ~{atAtLeastOne} \
      ~{exactlyExactlyOne}
  >>>
}