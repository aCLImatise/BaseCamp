version 1.0

task MappingQC {
  input {
    File inIn
    File outOut
    File roiRoi
    Boolean wgsWgs
    Boolean rnaRna
    Boolean txtTxt
    Int minMinMapq
    Boolean noNoCont
    Boolean debugDebug
    String buildBuild
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    MappingQC \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(roiRoi) then ("-roi " +  '"' + roiRoi + '"') else ""} \
      ~{true="-wgs" false="" wgsWgs} \
      ~{true="-rna" false="" rnaRna} \
      ~{true="-txt" false="" txtTxt} \
      ~{if defined(minMinMapq) then ("-min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{true="-no_cont" false="" noNoCont} \
      ~{true="-debug" false="" debugDebug} \
      ~{if defined(buildBuild) then ("-build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}