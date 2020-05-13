version 1.0

task Consensus.py {
  input {
    String cC
    Boolean fF
    Boolean sortSortIndex
    Int minMinQual
    Int minMinCov
    String dominantDominantFrqThrSh
    Int minMinLen
    String trimTrim
    String? bamBamFile
  }
  command <<<
    consensus.py \
      ~{bamBamFile} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--sortindex" false="" sortSortIndex} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(dominantDominantFrqThrSh) then ("--dominant_frq_thrsh " +  '"' + dominantDominantFrqThrSh + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""}
  >>>
}