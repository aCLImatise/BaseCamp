version 1.0

task OboIntersection.pl {
  input {
    Boolean? l
    Boolean? r
  }
  command <<<
    obo_intersection.pl \
      ~{true="-l" false="" l} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    l: "OBO input file 1"
    r: "OBO input file 2"
  }
}