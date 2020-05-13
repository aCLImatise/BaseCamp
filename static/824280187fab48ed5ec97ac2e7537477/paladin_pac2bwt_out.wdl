version 1.0

task PaladinPac2bwtOut.bwt {
  input {
    String? inInPac
    String? outOutBwt
  }
  command <<<
    paladin pac2bwt out.bwt \
      ~{inInPac} \
      ~{outOutBwt}
  >>>
}