version 1.0

task OverlapOutPrefix {
  input {
    String? matchesMatches1
    String? matchesMatches2
    String? outOutPrefix
  }
  command <<<
    overlap out-prefix \
      ~{matchesMatches1} \
      ~{matchesMatches2} \
      ~{outOutPrefix}
  >>>
}