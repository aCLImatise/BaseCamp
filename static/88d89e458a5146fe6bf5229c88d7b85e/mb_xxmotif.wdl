version 1.0

task MbXxmotif {
  input {
    String negNegSet
    String plotPlotPwm
    String startStart
    String stopStop
    String widthWidth
    String keyKey
    String filterFilterGff
    String aAWidth
    Boolean keepKeepTmpFiles
    String? inputInputFile
    String? genomeGenome
    String? outdirOutdir
    String? prefixPrefix
  }
  command <<<
    mb-xxmotif \
      ~{inputInputFile} \
      ~{if defined(negNegSet) then ("--negSet " +  '"' + negNegSet + '"') else ""} \
      ~{if defined(plotPlotPwm) then ("--plotPWM " +  '"' + plotPlotPwm + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(filterFilterGff) then ("--filterGFF " +  '"' + filterFilterGff + '"') else ""} \
      ~{if defined(aAWidth) then ("--awidth " +  '"' + aAWidth + '"') else ""} \
      ~{true="--keep-tmp-files" false="" keepKeepTmpFiles} \
      ~{genomeGenome} \
      ~{outdirOutdir} \
      ~{prefixPrefix}
  >>>
}