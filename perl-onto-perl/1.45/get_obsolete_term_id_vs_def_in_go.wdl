version 1.0

task GetObsoleteTermIdVsDefInGo.pl {
  input {
    Boolean fF
  }
  command <<<
    get_obsolete_term_id_vs_def_in_go.pl \
      ~{true="-f" false="" fF}
  >>>
}