version 1.0

task RunSeqtools.py {
  input {
    Boolean inInFile
    Boolean outfileOutfile
    Boolean inInFormat
    Boolean outOutFormat
    String maskMaskSites
    String filterFilterFragments
    String renameRename
  }
  command <<<
    run_seqtools.py \
      ~{true="-infile" false="" inInFile} \
      ~{true="-outfile" false="" outfileOutfile} \
      ~{true="-informat" false="" inInFormat} \
      ~{true="-outformat" false="" outOutFormat} \
      ~{if defined(maskMaskSites) then ("-masksites " +  '"' + maskMaskSites + '"') else ""} \
      ~{if defined(filterFilterFragments) then ("-filterfragments " +  '"' + filterFilterFragments + '"') else ""} \
      ~{if defined(renameRename) then ("-rename " +  '"' + renameRename + '"') else ""}
  >>>
}