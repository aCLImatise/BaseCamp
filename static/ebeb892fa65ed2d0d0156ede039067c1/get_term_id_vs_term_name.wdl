version 1.0

task GetTermIdVsTermName.pl {
  input {
    Boolean fF
  }
  command <<<
    get_term_id_vs_term_name.pl \
      ~{true="-f" false="" fF}
  >>>
}