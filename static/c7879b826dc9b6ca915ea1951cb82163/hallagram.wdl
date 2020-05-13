version 1.0

task Hallagram {
  input {
    String strongestStrongest
    String largestLargest
    Boolean maskMask
    String cmapCmap
    String aAXLabels
    String outfileOutfile
    String similaritySimilarity
    String orderOrderBy
    String? simSimTable
    String? treeTree
    String? associationsAssociations
  }
  command <<<
    hallagram \
      ~{simSimTable} \
      ~{if defined(strongestStrongest) then ("--strongest " +  '"' + strongestStrongest + '"') else ""} \
      ~{if defined(largestLargest) then ("--largest " +  '"' + largestLargest + '"') else ""} \
      ~{true="--mask" false="" maskMask} \
      ~{if defined(cmapCmap) then ("--cmap " +  '"' + cmapCmap + '"') else ""} \
      ~{if defined(aAXLabels) then ("--axlabels " +  '"' + aAXLabels + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(orderOrderBy) then ("--orderby " +  '"' + orderOrderBy + '"') else ""} \
      ~{treeTree} \
      ~{associationsAssociations}
  >>>
}