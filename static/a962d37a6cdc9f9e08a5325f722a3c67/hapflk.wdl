version 1.0

task Hapflk {
  input {
    String prefixPrefix
    String nNCpu
    Boolean eigenEigen
    File pedPed
    File mapMap
    String fileFile
    String bBFile
    String missMissGeno
    String missMissPheno
    String missMissParent
    String missMissSex
    String chrChr
    String fromFrom
    String toTo
    Boolean otherOtherMap
    File kinshipKinship
    String reynoldsReynoldsSnps
    String outOutGroup
    Boolean keepKeepOutGroup
    String kK
    String nNFit
    Boolean phasedPhased
    Boolean noNoKFrq
  }
  command <<<
    hapflk \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--eigen" false="" eigenEigen} \
      ~{if defined(pedPed) then ("--ped " +  '"' + pedPed + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(bBFile) then ("--bfile " +  '"' + bBFile + '"') else ""} \
      ~{if defined(missMissGeno) then ("--miss_geno " +  '"' + missMissGeno + '"') else ""} \
      ~{if defined(missMissPheno) then ("--miss_pheno " +  '"' + missMissPheno + '"') else ""} \
      ~{if defined(missMissParent) then ("--miss_parent " +  '"' + missMissParent + '"') else ""} \
      ~{if defined(missMissSex) then ("--miss_sex " +  '"' + missMissSex + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""} \
      ~{true="--other_map" false="" otherOtherMap} \
      ~{if defined(kinshipKinship) then ("--kinship " +  '"' + kinshipKinship + '"') else ""} \
      ~{if defined(reynoldsReynoldsSnps) then ("--reynolds-snps " +  '"' + reynoldsReynoldsSnps + '"') else ""} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{true="--keep-outgroup" false="" keepKeepOutGroup} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(nNFit) then ("--nfit " +  '"' + nNFit + '"') else ""} \
      ~{true="--phased" false="" phasedPhased} \
      ~{true="--no-kfrq" false="" noNoKFrq}
  >>>
}