version 1.0

task Poa {
  input {
    File readReadFastA
    File readReadMsa
    File readReadMsa2
    File subsetSubset
    File subsetSubset2
    File removeRemove
    File removeRemove2
    File readReadMsaList
    Boolean toToLower
    Boolean toToUpper
    Boolean doDoGlobal
    Boolean doDoProgressive
    File readReadPairScores
    Boolean fuseFuseAll
    Boolean hbHb
    String hbmHbmIn
    String? optionsOptions
    String? matrixMatrixFile
  }
  command <<<
    poa \
      ~{optionsOptions} \
      ~{if defined(readReadFastA) then ("-read_fasta " +  '"' + readReadFastA + '"') else ""} \
      ~{if defined(readReadMsa) then ("-read_msa " +  '"' + readReadMsa + '"') else ""} \
      ~{if defined(readReadMsa2) then ("-read_msa2 " +  '"' + readReadMsa2 + '"') else ""} \
      ~{if defined(subsetSubset) then ("-subset " +  '"' + subsetSubset + '"') else ""} \
      ~{if defined(subsetSubset2) then ("-subset2 " +  '"' + subsetSubset2 + '"') else ""} \
      ~{if defined(removeRemove) then ("-remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(removeRemove2) then ("-remove2 " +  '"' + removeRemove2 + '"') else ""} \
      ~{if defined(readReadMsaList) then ("-read_msa_list " +  '"' + readReadMsaList + '"') else ""} \
      ~{true="-tolower" false="" toToLower} \
      ~{true="-toupper" false="" toToUpper} \
      ~{true="-do_global" false="" doDoGlobal} \
      ~{true="-do_progressive" false="" doDoProgressive} \
      ~{if defined(readReadPairScores) then ("-read_pairscores " +  '"' + readReadPairScores + '"') else ""} \
      ~{true="-fuse_all" false="" fuseFuseAll} \
      ~{true="-hb" false="" hbHb} \
      ~{if defined(hbmHbmIn) then ("-hbmin " +  '"' + hbmHbmIn + '"') else ""} \
      ~{matrixMatrixFile}
  >>>
}