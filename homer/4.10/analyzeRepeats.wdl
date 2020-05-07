version 1.0

task AnalyzeRepeats.pl {
  input {
    String l1L1
    String l2L2
    String l3L3
    Boolean maxMaxDiv
    Boolean mindMindIv
    Boolean minlengthMinlength
    Boolean maxlengthMaxlength
    Boolean minlengthMinlengthP
    Boolean maxlengthMaxlengthP
    Boolean condenseCondenseL2
    Boolean rmsRmsK
    Boolean ogOg
    Boolean gffGff
    Boolean gidGid
    Boolean countCount
    Boolean strandStrand
    Boolean pcPc
    Boolean logLog
    Boolean sqrtSqrt
    Boolean condenseCondenseGenes
    Boolean noNoCondensing
    Boolean noNoCondensingParts
    Boolean minMin
    String noNoAdj
    Boolean rpRpKm
    Boolean tpmTpm
    Boolean normNorm
    Boolean normNormMatrix
    Boolean rRLog
    Boolean vstVst
    Boolean quantileQuantile
    Boolean upstreamUpstream
    Boolean downstreamDownstream
    Boolean lL
    String gGWasCatalog
  }
  command <<<
    analyzeRepeats.pl \
      ~{if defined(l1L1) then ("-L1 " +  '"' + l1L1 + '"') else ""} \
      ~{if defined(l2L2) then ("-L2 " +  '"' + l2L2 + '"') else ""} \
      ~{if defined(l3L3) then ("-L3 " +  '"' + l3L3 + '"') else ""} \
      ~{true="-maxdiv" false="" maxMaxDiv} \
      ~{true="-mindiv" false="" mindMindIv} \
      ~{true="-minLength" false="" minlengthMinlength} \
      ~{true="-maxLength" false="" maxlengthMaxlength} \
      ~{true="-minLengthP" false="" minlengthMinlengthP} \
      ~{true="-maxLengthP" false="" maxlengthMaxlengthP} \
      ~{true="-condenseL2" false="" condenseCondenseL2} \
      ~{true="-rmsk" false="" rmsRmsK} \
      ~{true="-og" false="" ogOg} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-gid" false="" gidGid} \
      ~{true="-count" false="" countCount} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-pc" false="" pcPc} \
      ~{true="-log" false="" logLog} \
      ~{true="-sqrt" false="" sqrtSqrt} \
      ~{true="-condenseGenes" false="" condenseCondenseGenes} \
      ~{true="-noCondensing" false="" noNoCondensing} \
      ~{true="-noCondensingParts" false="" noNoCondensingParts} \
      ~{true="-min" false="" minMin} \
      ~{if defined(noNoAdj) then ("-noadj " +  '"' + noNoAdj + '"') else ""} \
      ~{true="-rpkm" false="" rpRpKm} \
      ~{true="-tpm" false="" tpmTpm} \
      ~{true="-norm" false="" normNorm} \
      ~{true="-normMatrix" false="" normNormMatrix} \
      ~{true="-rlog" false="" rRLog} \
      ~{true="-vst" false="" vstVst} \
      ~{true="-quantile" false="" quantileQuantile} \
      ~{true="-upstream" false="" upstreamUpstream} \
      ~{true="-downstream" false="" downstreamDownstream} \
      ~{true="-L" false="" lL} \
      ~{if defined(gGWasCatalog) then ("-gwasCatalog " +  '"' + gGWasCatalog + '"') else ""}
  >>>
}