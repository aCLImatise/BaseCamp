version 1.0

task OverlapMatches1Matches2 {
  input {
    String? outOutPrefix
  }
  command <<<
    overlap matches-1 matches-2 \
      ~{outOutPrefix}
  >>>
}