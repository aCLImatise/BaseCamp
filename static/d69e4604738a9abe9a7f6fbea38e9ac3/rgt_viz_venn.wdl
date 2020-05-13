version 1.0

task RgtVizVenn {
  input {
    Boolean s1S1
    Boolean s2S2
    Boolean s3S3
    Boolean s4S4
    Boolean l1L1
    Boolean l2L2
    Boolean l3L3
    Boolean l4L4
    Boolean oO
    Boolean tT
    Boolean organismOrganism
  }
  command <<<
    rgt-viz venn \
      ~{true="-s1" false="" s1S1} \
      ~{true="-s2" false="" s2S2} \
      ~{true="-s3" false="" s3S3} \
      ~{true="-s4" false="" s4S4} \
      ~{true="-l1" false="" l1L1} \
      ~{true="-l2" false="" l2L2} \
      ~{true="-l3" false="" l3L3} \
      ~{true="-l4" false="" l4L4} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-organism" false="" organismOrganism}
  >>>
}