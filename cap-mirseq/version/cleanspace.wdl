version 1.0

task Cleanspace.sh {
  input {
    String? runRunInfoTxt
  }
  command <<<
    cleanspace.sh \
      ~{runRunInfoTxt}
  >>>
}