version 1.0

task FastqToFa {
  input {
    Boolean verboseVerbose
    String? inInFastQ
    String? outOutFa
  }
  command <<<
    fastqToFa \
      ~{inInFastQ} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{outOutFa}
  >>>
}