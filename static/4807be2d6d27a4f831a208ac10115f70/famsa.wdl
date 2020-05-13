version 1.0

task Famsa {
  input {
    String gapGap
    String gapGap
    String terminalTerminal
    String terminalTerminal
    String gapGap
    String gapGap
    String disableDisable
    String disableDisable
    String disableDisable
    String noNo
    String forceForce
    String noNo
    String verboseVerbose
    Boolean gtGt
    String meMeDoIdTree
    String partPartTree
    String gtGtExport
    String distDistExport
    String? parametersParameters
    String? inputInputFileName
    String? outputOutputFileName
  }
  command <<<
    famsa \
      ~{parametersParameters} \
      ~{if defined(gapGap) then ("- gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(gapGap) then ("- gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(terminalTerminal) then ("- terminal " +  '"' + terminalTerminal + '"') else ""} \
      ~{if defined(terminalTerminal) then ("- terminal " +  '"' + terminalTerminal + '"') else ""} \
      ~{if defined(gapGap) then ("- gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(gapGap) then ("- gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(disableDisable) then ("- disable " +  '"' + disableDisable + '"') else ""} \
      ~{if defined(disableDisable) then ("- disable " +  '"' + disableDisable + '"') else ""} \
      ~{if defined(disableDisable) then ("- disable " +  '"' + disableDisable + '"') else ""} \
      ~{if defined(noNo) then ("- no " +  '"' + noNo + '"') else ""} \
      ~{if defined(forceForce) then ("- force " +  '"' + forceForce + '"') else ""} \
      ~{if defined(noNo) then ("- no " +  '"' + noNo + '"') else ""} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="-gt" false="" gtGt} \
      ~{if defined(meMeDoIdTree) then ("-medoidtree " +  '"' + meMeDoIdTree + '"') else ""} \
      ~{if defined(partPartTree) then ("-parttree " +  '"' + partPartTree + '"') else ""} \
      ~{if defined(gtGtExport) then ("-gt_export " +  '"' + gtGtExport + '"') else ""} \
      ~{if defined(distDistExport) then ("-dist_export " +  '"' + distDistExport + '"') else ""} \
      ~{inputInputFileName} \
      ~{outputOutputFileName}
  >>>
}