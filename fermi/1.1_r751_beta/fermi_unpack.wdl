version 1.0

task FermiUnpack {
  input {
    Int iI
    Boolean mM
    String? seqsSeqsBwt
  }
  command <<<
    fermi unpack \
      ~{seqsSeqsBwt} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-M" false="" mM}
  >>>
}