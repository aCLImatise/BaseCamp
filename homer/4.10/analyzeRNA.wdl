version 1.0

task AnalyzeRNA.pl {
  input {
    Boolean orOr
  }
  command <<<
    analyzeRNA.pl \
      ~{true="-or-" false="" orOr}
  >>>
}