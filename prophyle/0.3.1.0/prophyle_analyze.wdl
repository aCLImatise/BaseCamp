version 1.0

task ProphyleAnalyze.py {
  input {
    Boolean sS
    Boolean fF
  }
  command <<<
    prophyle_analyze.py \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF}
  >>>
}