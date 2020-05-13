version 1.0

task StringMLST.py {
  input {
    String? profileProfile
  }
  command <<<
    stringMLST.py \
      ~{profileProfile}
  >>>
}