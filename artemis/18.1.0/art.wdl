version 1.0

task Art {
  input {
    File optionsOptions
    Boolean chadoChado
    Boolean dDBlackBeltMode
    String dDOffset
    Array[File]+ dDUserPlot
    Array[File]+ dlogDlogUserPlot
    File dbDbAm
    String dbDbAmClone
    Boolean dbDbAm
    Boolean dDShowSnps
    Boolean dDShowSnpPlot
    Boolean dDShowCovPlot
    Boolean dDShowForwardLines
    Boolean dDShowReverseLines
    Boolean dchaDchaDo
    Boolean dreadDreadOnly
    String? sequenceSequenceFile
    String? featureFeatureFile
  }
  command <<<
    art \
      ~{sequenceSequenceFile} \
      ~{if defined(optionsOptions) then ("-options " +  '"' + optionsOptions + '"') else ""} \
      ~{true="-chado" false="" chadoChado} \
      ~{true="-Dblack_belt_mode" false="" dDBlackBeltMode} \
      ~{if defined(dDOffset) then ("-Doffset " +  '"' + dDOffset + '"') else ""} \
      ~{if defined(dDUserPlot) then ("-Duserplot " +  '"' + dDUserPlot + '"') else ""} \
      ~{if defined(dlogDlogUserPlot) then ("-Dloguserplot " +  '"' + dlogDlogUserPlot + '"') else ""} \
      ~{if defined(dbDbAm) then ("-Dbam " +  '"' + dbDbAm + '"') else ""} \
      ~{if defined(dbDbAmClone) then ("-DbamClone " +  '"' + dbDbAmClone + '"') else ""} \
      ~{true="-Dbam" false="" dbDbAm} \
      ~{true="-Dshow_snps" false="" dDShowSnps} \
      ~{true="-Dshow_snp_plot" false="" dDShowSnpPlot} \
      ~{true="-Dshow_cov_plot" false="" dDShowCovPlot} \
      ~{true="-Dshow_forward_lines" false="" dDShowForwardLines} \
      ~{true="-Dshow_reverse_lines" false="" dDShowReverseLines} \
      ~{true="-Dchado" false="" dchaDchaDo} \
      ~{true="-Dread_only" false="" dreadDreadOnly} \
      ~{featureFeatureFile}
  >>>
}