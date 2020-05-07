version 1.0

task HaslrAssemble {
  input {
    String cC
    String lL
    String mM
    String dD
    Boolean alnAlnBlock
    Boolean alnAlnSim
    Boolean uniqUniqDev
    Boolean edgeEdgeSup
    Int tT
    Boolean longLongFofN
    Boolean mappingMappingFofN
    String? detectsDetectsV
  }
  command <<<
    haslr_assemble \
      ~{detectsDetectsV} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="--aln-block" false="" alnAlnBlock} \
      ~{true="--aln-sim" false="" alnAlnSim} \
      ~{true="--uniq-dev" false="" uniqUniqDev} \
      ~{true="--edge-sup" false="" edgeEdgeSup} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--long-fofn" false="" longLongFofN} \
      ~{true="--mapping-fofn" false="" mappingMappingFofN}
  >>>
}