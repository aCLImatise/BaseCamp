version 1.0

task Polymut.py {
  input {
    String cC
    Boolean fF
    Boolean sortSortIndex
    Int minMinLen
    Int minMinQual
    Int minMinCov
    String dominantDominantFrqThrSh
    String gffGffFile
    String? bamBamFile
  }
  command <<<
    polymut.py \
      ~{bamBamFile} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--sortindex" false="" sortSortIndex} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(dominantDominantFrqThrSh) then ("--dominant_frq_thrsh " +  '"' + dominantDominantFrqThrSh + '"') else ""} \
      ~{if defined(gffGffFile) then ("--gff_file " +  '"' + gffGffFile + '"') else ""}
  >>>
}