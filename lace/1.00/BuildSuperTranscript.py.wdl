version 1.0

task BuildSuperTranscriptpy {
  command <<<
    BuildSuperTranscript_py
  >>>
  output {
    File out_stdout = stdout()
  }
}