version 1.0

task CheckTagBias.pl {
  input {
    String posPos
    Boolean skipSkipGc
    Boolean skipSkipFreq
    File prefixPrefix
    Boolean maskMask
  }
  command <<<
    checkTagBias.pl \
      ~{if defined(posPos) then ("-pos " +  '"' + posPos + '"') else ""} \
      ~{true="-skipGC" false="" skipSkipGc} \
      ~{true="-skipFreq" false="" skipSkipFreq} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="-mask" false="" maskMask}
  >>>
}