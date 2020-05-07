version 1.0

task AbyssJunction {
  input {
    File ignoreIgnore
    Boolean verboseVerbose
    String? overlapOverlap
    String? scaffoldScaffold
  }
  command <<<
    abyss-junction \
      ~{overlapOverlap} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{scaffoldScaffold}
  >>>
}