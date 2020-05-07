version 1.0

task Sim4db {
  input {
    Boolean noNoDefLines
    Boolean alignmentsAlignments
    Boolean polyPolyTails
    Boolean cutCut
    String noncanonicalNoncanonical
    Boolean spliceSpliceModel
    Boolean forceForceStrand
    String interspeciesInterspecies
    Boolean zZ
    Boolean hH
    Boolean kK
    Boolean cC
    Boolean maMa
    Boolean mpMp
  }
  command <<<
    sim4db \
      ~{true="-nodeflines" false="" noNoDefLines} \
      ~{true="-alignments" false="" alignmentsAlignments} \
      ~{true="-polytails" false="" polyPolyTails} \
      ~{true="-cut" false="" cutCut} \
      ~{if defined(noncanonicalNoncanonical) then ("-noncanonical " +  '"' + noncanonicalNoncanonical + '"') else ""} \
      ~{true="-splicemodel" false="" spliceSpliceModel} \
      ~{true="-forcestrand" false="" forceForceStrand} \
      ~{if defined(interspeciesInterspecies) then ("-interspecies " +  '"' + interspeciesInterspecies + '"') else ""} \
      ~{true="-Z" false="" zZ} \
      ~{true="-H" false="" hH} \
      ~{true="-K" false="" kK} \
      ~{true="-C" false="" cC} \
      ~{true="-Ma" false="" maMa} \
      ~{true="-Mp" false="" mpMp}
  >>>
}