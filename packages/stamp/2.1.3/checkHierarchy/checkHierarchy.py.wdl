version 1.0

task CheckHierarchypy {
  input {
    String stamp_profile
  }
  command <<<
    checkHierarchy_py \
      ~{stamp_profile}
  >>>
  parameter_meta {
    stamp_profile: "STAMP profile to evaluate"
  }
  output {
    File out_stdout = stdout()
  }
}