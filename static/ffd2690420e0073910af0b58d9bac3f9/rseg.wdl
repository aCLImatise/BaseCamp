version 1.0

task Rseg {
  input {
    Boolean outOut
    Boolean scoreScore
    Boolean readReadCount
    Boolean boundaryBoundary
    Boolean boundaryBoundaryScore
    Boolean chromChrom
    Boolean deadDeadZones
    Boolean bamBam
    Boolean paramParamIn
    Boolean paramParamOut
    Boolean maxMaxItR
    Boolean binBinSize
    Boolean binBinStep
    Boolean duplicatesDuplicates
    Boolean fragmentFragmentLength
    Boolean watermanWaterman
    Boolean hideakiHideaki
    Boolean hideakiHideakiEmp
    Boolean smoothSmooth
    Boolean maxMaxDead
    Boolean domainDomainSize
    Boolean desertDesert
    Boolean fgFg
    Boolean bgBg
    Boolean posteriorPosterior
    Boolean posteriorPosteriorCutOff
    Boolean undefinedUndefined
    Boolean cutCutOff
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? mappedMappedReadLocations
  }
  command <<<
    rseg \
      ~{optionsOptions} \
      ~{true="-out" false="" outOut} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-readcount" false="" readReadCount} \
      ~{true="-boundary" false="" boundaryBoundary} \
      ~{true="-boundary-score" false="" boundaryBoundaryScore} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-deadzones" false="" deadDeadZones} \
      ~{true="-bam" false="" bamBam} \
      ~{true="-param-in" false="" paramParamIn} \
      ~{true="-param-out" false="" paramParamOut} \
      ~{true="-maxitr" false="" maxMaxItR} \
      ~{true="-bin-size" false="" binBinSize} \
      ~{true="-bin-step" false="" binBinStep} \
      ~{true="-duplicates" false="" duplicatesDuplicates} \
      ~{true="-fragment_length" false="" fragmentFragmentLength} \
      ~{true="-Waterman" false="" watermanWaterman} \
      ~{true="-Hideaki" false="" hideakiHideaki} \
      ~{true="-Hideaki-emp" false="" hideakiHideakiEmp} \
      ~{true="-smooth" false="" smoothSmooth} \
      ~{true="-max-dead" false="" maxMaxDead} \
      ~{true="-domain-size" false="" domainDomainSize} \
      ~{true="-desert" false="" desertDesert} \
      ~{true="-fg" false="" fgFg} \
      ~{true="-bg" false="" bgBg} \
      ~{true="-posterior" false="" posteriorPosterior} \
      ~{true="-posterior-cutoff" false="" posteriorPosteriorCutOff} \
      ~{true="-undefined" false="" undefinedUndefined} \
      ~{true="-cutoff" false="" cutCutOff} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{mappedMappedReadLocations}
  >>>
}