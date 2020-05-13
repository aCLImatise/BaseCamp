version 1.0

task RunMicrobeCensus.py {
  input {
    Boolean vV
    String rR
    String nN
    String tT
    Boolean eE
    Boolean lL
    Int qQ
    String mM
    Boolean dD
    Int uU
    String? seqSeqFiles
    String? outfileOutfile
  }
  command <<<
    run_microbe_census.py \
      ~{seqSeqFiles} \
      ~{true="-v" false="" vV} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{outfileOutfile}
  >>>
}