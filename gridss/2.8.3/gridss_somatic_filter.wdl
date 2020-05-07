version 1.0

task GridssSomaticFilter {
  input {
    Boolean gcGc
    Boolean optsOpts
    Boolean pondPondIr
    Boolean refRef
    Boolean inputInput
    Boolean outputOutput
    Boolean fullFullOutput
    Boolean plotPlotDir
    Boolean normalNormalOrdinal
    Boolean scriptScriptDir
  }
  command <<<
    gridss_somatic_filter \
      ~{true="--gc" false="" gcGc} \
      ~{true="--opts" false="" optsOpts} \
      ~{true="--pondir" false="" pondPondIr} \
      ~{true="--ref" false="" refRef} \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--fulloutput" false="" fullFullOutput} \
      ~{true="--plotdir" false="" plotPlotDir} \
      ~{true="--normalordinal" false="" normalNormalOrdinal} \
      ~{true="--scriptdir" false="" scriptScriptDir}
  >>>
}