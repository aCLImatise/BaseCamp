version 1.0

task OboTransitiveReduction.pl {
  input {
    Boolean fF
  }
  command <<<
    obo_transitive_reduction.pl \
      ~{true="-f" false="" fF}
  >>>
}