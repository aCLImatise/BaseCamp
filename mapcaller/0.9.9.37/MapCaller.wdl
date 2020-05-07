version 1.0

task MapCaller {
  input {
    String iI
    String rR
    Boolean fF
    Boolean f2F2
    Int tT
    Boolean sizeSize
    Int inInDel
    Int adAd
    Int dupDup
    Float maxMaxMm
    Int maxMaxClip
    Boolean samSam
    Boolean bamBam
    String algAlg
    Boolean vcfVcf
    Boolean gvcGvcF
    String logLog
    Boolean monomorphicMonomorphic
    Int minMinCnv
    Int minMinGap
    Int ploidyPloidy
    Boolean mM
    Boolean somaticSomatic
    Boolean noNoVcf
    Boolean pP
    Boolean filterFilter
    Boolean vV
  }
  command <<<
    MapCaller \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-f2" false="" f2F2} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-size" false="" sizeSize} \
      ~{if defined(inInDel) then ("-indel " +  '"' + inInDel + '"') else ""} \
      ~{if defined(adAd) then ("-ad " +  '"' + adAd + '"') else ""} \
      ~{if defined(dupDup) then ("-dup " +  '"' + dupDup + '"') else ""} \
      ~{if defined(maxMaxMm) then ("-maxmm " +  '"' + maxMaxMm + '"') else ""} \
      ~{if defined(maxMaxClip) then ("-maxclip " +  '"' + maxMaxClip + '"') else ""} \
      ~{true="-sam" false="" samSam} \
      ~{true="-bam" false="" bamBam} \
      ~{if defined(algAlg) then ("-alg " +  '"' + algAlg + '"') else ""} \
      ~{true="-vcf" false="" vcfVcf} \
      ~{true="-gvcf" false="" gvcGvcF} \
      ~{if defined(logLog) then ("-log " +  '"' + logLog + '"') else ""} \
      ~{true="-monomorphic" false="" monomorphicMonomorphic} \
      ~{if defined(minMinCnv) then ("-min_cnv " +  '"' + minMinCnv + '"') else ""} \
      ~{if defined(minMinGap) then ("-min_gap " +  '"' + minMinGap + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("-ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-somatic" false="" somaticSomatic} \
      ~{true="-no_vcf" false="" noNoVcf} \
      ~{true="-p" false="" pP} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-v" false="" vV}
  >>>
}