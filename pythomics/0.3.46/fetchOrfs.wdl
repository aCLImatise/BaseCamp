version 1.0

task FetchOrfs.py {
  input {
    String pP
    Boolean fF
    Boolean oO
    Int minMin
    Boolean bothBothStrands
    Boolean noNoMetStart
    Boolean fromFromMet
    Boolean fromFromMetKeep
  }
  command <<<
    fetchOrfs.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{true="--both-strands" false="" bothBothStrands} \
      ~{true="--no-met-start" false="" noNoMetStart} \
      ~{true="--from-met" false="" fromFromMet} \
      ~{true="--from-met-keep" false="" fromFromMetKeep}
  >>>
}