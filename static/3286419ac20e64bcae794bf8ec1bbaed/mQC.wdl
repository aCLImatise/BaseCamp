version 1.0

task MQC.pl {
  input {
    Boolean mapperMapper
    Boolean maxMaxMultimap
    Boolean ensEnsDb
    Boolean offsetOffset
    Boolean plastidPlastidBam
    Boolean minMinLengthPlastid
    Boolean maxMaxLengthPlastid
    Boolean offsetOffsetFile
    Boolean minMinLengthGd
    Boolean maxMaxLengthGd
    Boolean outOutFolder
    Boolean toolToolDir
    Boolean plotPlotRpfTool
    Boolean outOutHtml
    Boolean outOutZip
  }
  command <<<
    mQC.pl \
      ~{true="--mapper" false="" mapperMapper} \
      ~{true="--maxmultimap" false="" maxMaxMultimap} \
      ~{true="--ens_db" false="" ensEnsDb} \
      ~{true="--offset" false="" offsetOffset} \
      ~{true="--plastid_bam" false="" plastidPlastidBam} \
      ~{true="--min_length_plastid" false="" minMinLengthPlastid} \
      ~{true="--max_length_plastid" false="" maxMaxLengthPlastid} \
      ~{true="--offset_file" false="" offsetOffsetFile} \
      ~{true="--min_length_gd" false="" minMinLengthGd} \
      ~{true="--max_length_gd" false="" maxMaxLengthGd} \
      ~{true="--outfolder" false="" outOutFolder} \
      ~{true="--tool_dir" false="" toolToolDir} \
      ~{true="--plotrpftool" false="" plotPlotRpfTool} \
      ~{true="--outhtml" false="" outOutHtml} \
      ~{true="--outzip" false="" outOutZip}
  >>>
}