version 1.0

task PreseqGcExtrap {
  input {
    Boolean outputOutput
    Boolean maxMaxWidth
    Boolean binBinSize
    Boolean extraExtraP
    Boolean stepStep
    Boolean bootstrapsBootstraps
    Boolean cvalCval
    Boolean termsTerms
    Boolean verboseVerbose
    Boolean bedBed
    Boolean quickQuick
    Boolean defectsDefects
    Boolean seedSeed
    Boolean aboutAbout
    String? gcGcExtraP
    String? optionsOptions
    String? sortedSortedMappedReadFile
  }
  command <<<
    preseq gc_extrap \
      ~{gcGcExtraP} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-max_width" false="" maxMaxWidth} \
      ~{true="-bin_size" false="" binBinSize} \
      ~{true="-extrap" false="" extraExtraP} \
      ~{true="-step" false="" stepStep} \
      ~{true="-bootstraps" false="" bootstrapsBootstraps} \
      ~{true="-cval" false="" cvalCval} \
      ~{true="-terms" false="" termsTerms} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-quick" false="" quickQuick} \
      ~{true="-defects" false="" defectsDefects} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{optionsOptions} \
      ~{sortedSortedMappedReadFile}
  >>>
}