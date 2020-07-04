version 1.0

task MindTheGap {
  input {
    Boolean? version
  }
  command <<<
    MindTheGap \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    version: ":    display current version"
  }
}