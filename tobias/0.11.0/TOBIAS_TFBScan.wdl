version 1.0

task TOBIASTFBScan {
  input {
    Boolean mM
    Boolean fF
    Boolean rR
    Boolean outdirOutdir
    Boolean outfileOutfile
    Boolean namingNaming
    Boolean gcGc
    Boolean pPValue
    Boolean keepKeepOverlaps
    Boolean addAddRegionColumns
    Int verbosityVerbosity
    Int splitSplit
    Boolean coresCores
  }
  command <<<
    TOBIAS TFBScan \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--naming" false="" namingNaming} \
      ~{true="--gc" false="" gcGc} \
      ~{true="--pvalue" false="" pPValue} \
      ~{true="--keep-overlaps" false="" keepKeepOverlaps} \
      ~{true="--add-region-columns" false="" addAddRegionColumns} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{true="--cores" false="" coresCores}
  >>>
}