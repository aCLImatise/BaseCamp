version 1.0

task JgiGc {
  input {
    Boolean iI
    String targetTarget
    String outOutGc
    String outOutFp
    String minMinAni
    String minMinScore
    Boolean noNoAni
    Boolean appendAppend
    Boolean selfSelf
    String cacheCache
    Boolean tT
    String batchBatchIndex
    String batchBatchSize
    String minMinFraction
    String numbNumbIts
    Boolean dD
    Boolean vV
  }
  command <<<
    jgi_gc \
      ~{true="-i" false="" iI} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(outOutGc) then ("--outGC " +  '"' + outOutGc + '"') else ""} \
      ~{if defined(outOutFp) then ("--outFP " +  '"' + outOutFp + '"') else ""} \
      ~{if defined(minMinAni) then ("--minANI " +  '"' + minMinAni + '"') else ""} \
      ~{if defined(minMinScore) then ("--minScore " +  '"' + minMinScore + '"') else ""} \
      ~{true="--noANI" false="" noNoAni} \
      ~{true="--append" false="" appendAppend} \
      ~{true="--self" false="" selfSelf} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{if defined(batchBatchIndex) then ("--batchIndex " +  '"' + batchBatchIndex + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batchSize " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(minMinFraction) then ("--minFraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(numbNumbIts) then ("--numBits " +  '"' + numbNumbIts + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV}
  >>>
}