version 1.0

task BwaPac2bwtgen {
  input {
    String? bwtBwtGen
    String? inInPac
    String? outOutBwt
  }
  command <<<
    bwa pac2bwtgen \
      ~{bwtBwtGen} \
      ~{inInPac} \
      ~{outOutBwt}
  >>>
}