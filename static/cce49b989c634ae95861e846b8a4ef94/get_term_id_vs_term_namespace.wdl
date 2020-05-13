version 1.0

task GetTermIdVsTermNamespace.pl {
  input {
    Boolean fF
  }
  command <<<
    get_term_id_vs_term_namespace.pl \
      ~{true="-f" false="" fF}
  >>>
}