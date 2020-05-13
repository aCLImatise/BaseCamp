version 1.0

task GemBSCallReport {
  input {
    String projectProject
    File outputOutputDir
    String threadsThreads
  }
  command <<<
    gemBS call-report \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}