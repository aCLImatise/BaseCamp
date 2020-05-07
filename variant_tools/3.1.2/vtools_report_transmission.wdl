version 1.0

task VtoolsReportTransmission {
  input {
    String parentsParents
    Array[String]+ offspringOffspring
    Boolean deDeNovo
    Boolean recessiveRecessive
    Boolean inconsistentInconsistent
    Boolean vV
  }
  command <<<
    vtools_report transmission \
      ~{if defined(parentsParents) then ("--parents " +  '"' + parentsParents + '"') else ""} \
      ~{if defined(offspringOffspring) then ("--offspring " +  '"' + offspringOffspring + '"') else ""} \
      ~{true="--denovo" false="" deDeNovo} \
      ~{true="--recessive" false="" recessiveRecessive} \
      ~{true="--inconsistent" false="" inconsistentInconsistent} \
      ~{true="-v" false="" vV}
  >>>
}