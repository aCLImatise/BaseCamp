version 1.0

task CheckHierarchy.py {
  input {
    String stamp_profile
  }
  command <<<
    checkHierarchy.py \
      ~{stamp_profile}
  >>>
  parameter_meta {
    stamp_profile: "STAMP profile to evaluate"
  }
}