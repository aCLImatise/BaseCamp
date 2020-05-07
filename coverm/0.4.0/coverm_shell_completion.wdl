version 1.0

task CovermShellCompletion {
  input {
    String outputOutputFile
    String shellShell
    String? flagsFlags
  }
  command <<<
    coverm shell-completion \
      ~{flagsFlags} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(shellShell) then ("--shell " +  '"' + shellShell + '"') else ""}
  >>>
}