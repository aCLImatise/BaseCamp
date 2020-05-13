version 1.0

task OboIntersection.pl {
  input {
    Boolean lL
    Boolean rR
  }
  command <<<
    obo_intersection.pl \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR}
  >>>
}