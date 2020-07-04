version 1.0

task StringMLST.py {
  input {
    String profile
  }
  command <<<
    stringMLST.py \
      ~{profile}
  >>>
  parameter_meta {
    profile: "profileFile"
  }
}