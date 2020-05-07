version 1.0

task DemoRegexpGrep {
  input {
    Boolean countCount
    Boolean ignoreIgnoreCase
    Boolean filesFilesWithMatches
    Boolean lineLineNumber
    Boolean recursiveRecursive
    Boolean noNoMessages
    Boolean invertInvertMatch
    Boolean lineLineRegex
    Boolean lineLineRegexp
    Boolean fF
  }
  command <<<
    demo_regexp_grep \
      ~{true="--count" false="" countCount} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--files-with-matches" false="" filesFilesWithMatches} \
      ~{true="--line-number" false="" lineLineNumber} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--no-messages" false="" noNoMessages} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{true="--line-regex" false="" lineLineRegex} \
      ~{true="--line-regexp" false="" lineLineRegexp} \
      ~{true="-f" false="" fF}
  >>>
}