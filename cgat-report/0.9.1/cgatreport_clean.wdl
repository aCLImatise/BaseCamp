version 1.0

task CgatreportClean {
  input {
    String verboseVerbose
    String sectionSection
    File pathPath
    String buildBuild
    Boolean dryDryRun
  }
  command <<<
    cgatreport-clean \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}