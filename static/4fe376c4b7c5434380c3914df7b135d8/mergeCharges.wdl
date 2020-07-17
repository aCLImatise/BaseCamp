version 1.0

task MergeCharges.pl {
  input {
    Boolean? i
    Boolean? o
    Boolean? c
    Boolean? oc
  }
  command <<<
    mergeCharges.pl \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-c" false="" c} \
      ~{true="-oc" false="" oc}
  >>>
  parameter_meta {
    i: ""
    o: ""
    c: ""
    oc: ""
  }
}