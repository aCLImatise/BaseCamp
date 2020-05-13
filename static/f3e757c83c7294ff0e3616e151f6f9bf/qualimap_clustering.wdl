version 1.0

task QualimapClustering {
  input {
    String binBinSize
    String clustersClusters
    String controlControl
    String exprExpr
    String fragmentFragmentLength
    String lL
    String nameName
    String outdirOutdir
    String outfileOutfile
    String outOutFormat
    String rRScriptPath
    String rR
    String regionsRegions
    String sampleSample
    String vizViz
  }
  command <<<
    qualimap clustering \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(controlControl) then ("-control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(exprExpr) then ("-expr " +  '"' + exprExpr + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragment-length " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("-outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFormat) then ("-outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(rRScriptPath) then ("--rscriptpath " +  '"' + rRScriptPath + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(regionsRegions) then ("-regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(sampleSample) then ("-sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(vizViz) then ("-viz " +  '"' + vizViz + '"') else ""}
  >>>
}