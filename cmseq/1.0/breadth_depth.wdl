version 1.0

task BreadthDepth.py {
  input {
    String cC
    Boolean fF
    Boolean sortSortIndex
    Int minMinLen
    Int minMinQual
    Int minMinCov
    String truncateTruncate
    String? bamBamFile
  }
  command <<<
    breadth_depth.py \
      ~{bamBamFile} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--sortindex" false="" sortSortIndex} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(truncateTruncate) then ("--truncate " +  '"' + truncateTruncate + '"') else ""}
  >>>
}