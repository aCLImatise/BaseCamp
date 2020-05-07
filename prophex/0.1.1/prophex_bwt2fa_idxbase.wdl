version 1.0

task ProphexBwt2faIdxbase {
  input {
    String? outputOutputFa
  }
  command <<<
    prophex bwt2fa idxbase \
      ~{outputOutputFa}
  >>>
}