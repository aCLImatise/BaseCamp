version 1.0

task GemBSMapReport {
  input {
    String projectProject
    File outputOutputDir
  }
  command <<<
    gemBS map-report \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}