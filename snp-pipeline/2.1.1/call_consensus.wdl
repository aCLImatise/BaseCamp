version 1.0

task CallConsensus.py {
  input {
    Boolean forceForce
    File snpSnpListFile
    File excludeExcludeFile
    File outputOutput
    Int minMinBaseQual
    String minMinConsFreq
    Int minMinConsDpth
    Int minMinConsStrDdpTh
    String minMinConsStRdBias
    String vcfVcfFilename
    String vcfVcfRefname
    Boolean vcfVcfAllPos
    Boolean vcfVcfPreserveRefCase
    Boolean vcfVcfFailedSnpGt
    Boolean vV
    String? allAllPileUpFile
  }
  command <<<
    call_consensus.py \
      ~{allAllPileUpFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(snpSnpListFile) then ("--snpListFile " +  '"' + snpSnpListFile + '"') else ""} \
      ~{if defined(excludeExcludeFile) then ("--excludeFile " +  '"' + excludeExcludeFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--minBaseQual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(minMinConsFreq) then ("--minConsFreq " +  '"' + minMinConsFreq + '"') else ""} \
      ~{if defined(minMinConsDpth) then ("--minConsDpth " +  '"' + minMinConsDpth + '"') else ""} \
      ~{if defined(minMinConsStrDdpTh) then ("--minConsStrdDpth " +  '"' + minMinConsStrDdpTh + '"') else ""} \
      ~{if defined(minMinConsStRdBias) then ("--minConsStrdBias " +  '"' + minMinConsStRdBias + '"') else ""} \
      ~{if defined(vcfVcfFilename) then ("--vcfFileName " +  '"' + vcfVcfFilename + '"') else ""} \
      ~{if defined(vcfVcfRefname) then ("--vcfRefName " +  '"' + vcfVcfRefname + '"') else ""} \
      ~{true="--vcfAllPos" false="" vcfVcfAllPos} \
      ~{true="--vcfPreserveRefCase" false="" vcfVcfPreserveRefCase} \
      ~{true="--vcfFailedSnpGt" false="" vcfVcfFailedSnpGt} \
      ~{true="-v" false="" vV}
  >>>
}