version 1.0

task GetObsoleteTermIdVsNameInGo.pl {
  input {
    Boolean fF
  }
  command <<<
    get_obsolete_term_id_vs_name_in_go.pl \
      ~{true="-f" false="" fF}
  >>>
}