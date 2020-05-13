version 1.0

task GetTermIdVsTermDef.pl {
  input {
    Boolean fF
  }
  command <<<
    get_term_id_vs_term_def.pl \
      ~{true="-f" false="" fF}
  >>>
}