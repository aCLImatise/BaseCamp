version 1.0

task Versions.py {
  input {
    String target
  }
  command <<<
    versions.py \
      ~{target}
  >>>
  parameter_meta {
    target: "Target output file for version numbers"
  }
}