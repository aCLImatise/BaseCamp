version 1.0

task CheckHierarchy.py {
  input {
    String? stampStampProfile
  }
  command <<<
    checkHierarchy.py \
      ~{stampStampProfile}
  >>>
}