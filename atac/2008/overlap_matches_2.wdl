version 1.0

task OverlapMatches2 {
  input {
    String? matchesMatches1
    String? matchesMatches2
    String? outOutPrefix
  }
  command <<<
    overlap matches-2 \
      ~{matchesMatches1} \
      ~{matchesMatches2} \
      ~{outOutPrefix}
  >>>
}