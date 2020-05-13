version 1.0

task StagDiff.pl {
  input {
    String iI
    Boolean parserParser
  }
  command <<<
    stag-diff.pl \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-parser" false="" parserParser}
  >>>
}