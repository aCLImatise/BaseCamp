version 1.0

task Skipseq {
  input {
    Boolean? skip
    Boolean? feature
  }
  command <<<
    skipseq \
      ~{if (skip) then "-skip" else ""} \
      ~{if (feature) then "-feature" else ""}
  >>>
  parameter_meta {
    skip: "integer    [0] Number of sequences to skip at start\\n(Any integer value)"
    feature: "boolean    Use feature information"
  }
  output {
    File out_stdout = stdout()
  }
}