version 1.0

task OverlapMatches1OutPrefix {
  input {
    String? matchesMatches2
    String? outOutPrefix
  }
  command <<<
    overlap matches-1 out-prefix \
      ~{matchesMatches2} \
      ~{outOutPrefix}
  >>>
}