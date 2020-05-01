version 1.0

task Poly.py {
  input {
    String cC
    Boolean fF
    Boolean sortSortIndex
    Int minMinLen
    Int minMinQual
    Int minMinCov
    String pPValue
    String seqSeqErr
    String dominantDominantFrqThrSh
    String? bamBamFile
  }
  command <<<
    poly.py \
      ~{bamBamFile} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--sortindex" false="" sortSortIndex} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(seqSeqErr) then ("--seq_err " +  '"' + seqSeqErr + '"') else ""} \
      ~{if defined(dominantDominantFrqThrSh) then ("--dominant_frq_thrsh " +  '"' + dominantDominantFrqThrSh + '"') else ""}
  >>>
}