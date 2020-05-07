version 1.0

task Ambtest {
  input {
    String mM
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    ambtest \
      ~{seqSeqFileIn} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-options" false="" optionsOptions}
  >>>
}