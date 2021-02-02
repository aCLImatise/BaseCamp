version 1.0

task MindTheGap {
  input {
    Boolean? version
  }
  command <<<
    MindTheGap \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    version: ":    display current version"
  }
  output {
    File out_stdout = stdout()
  }
}