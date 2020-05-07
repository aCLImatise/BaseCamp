version 1.0

task PaladinPac2bwtIn.pac {
  input {
    String? outOutBwt
  }
  command <<<
    paladin pac2bwt in.pac \
      ~{outOutBwt}
  >>>
}