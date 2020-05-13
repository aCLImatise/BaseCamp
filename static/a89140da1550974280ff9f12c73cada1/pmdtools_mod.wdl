version 1.0

task PmdtoolsMod {
  input {
    Boolean pmPmDspRim
    String pmPmDspRimThreshold
    Boolean firstFirst
    String rangeRange
    Boolean noNoClips
    Boolean noNoIndels
    Boolean onlyOnlyClips
    Boolean onlyOnlyDeletions
    Boolean onlyOnlyInsertions
    Boolean noNoDeletions
    Boolean noNoInsertions
    Boolean notNotReverse
    Boolean adjustAdjustBaseQ
    Boolean adjustAdjustBaseQAll
    String samSamToolsPath
    Boolean baseBaseComposition
    String refseqRefseq
    Boolean estimateEstimate
    String estimateEstimateBase
    String basicBasic
    String pmPmDpParam
    String pmdPmdConstant
    String polymorphismPolymorphismAncient
    String polymorphismPolymorphismContamination
    Boolean dryDry
    Int numberNumber
    String chromosomeChromosome
    String percPercIdentity
    String requireRequireMapq
    String readReadLength
    Int maxlengthMaxlength
    Int minlengthMinlength
    Int maxMaxGc
    Int mingMingC
    String requireRequireBaseQ
    String thresholdThreshold
    String upperUpperThreshold
    Boolean udgUdgPlus
    Boolean noNoCpg
    Boolean udgUdgHalf
    Boolean udgUdgMinus
    Boolean verboseVerbose
    Boolean headerHeader
    Boolean writesWritesAmField
    Boolean statsStats
    Boolean debugDebug
    Boolean printPrintDs
    Boolean printPrintAlignments
    Boolean platypusPlatypus
    Boolean deaminationDeamination
    Boolean includeIncludeDeamination
    Boolean includeIncludeIndels
    Boolean includeIncludeUnknown
    String? pythonPython
    String? pmdPmdToolsMod
    String? samSamFormattedDataWithMdFieldPresentFromStdin
  }
  command <<<
    pmdtools_mod \
      ~{pythonPython} \
      ~{true="--PMDSprim" false="" pmPmDspRim} \
      ~{if defined(pmPmDspRimThreshold) then ("--PMDSprimthreshold " +  '"' + pmPmDspRimThreshold + '"') else ""} \
      ~{true="--first" false="" firstFirst} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{true="--noclips" false="" noNoClips} \
      ~{true="--noindels" false="" noNoIndels} \
      ~{true="--onlyclips" false="" onlyOnlyClips} \
      ~{true="--onlydeletions" false="" onlyOnlyDeletions} \
      ~{true="--onlyinsertions" false="" onlyOnlyInsertions} \
      ~{true="--nodeletions" false="" noNoDeletions} \
      ~{true="--noinsertions" false="" noNoInsertions} \
      ~{true="--notreverse" false="" notNotReverse} \
      ~{true="--adjustbaseq" false="" adjustAdjustBaseQ} \
      ~{true="--adjustbaseq_all" false="" adjustAdjustBaseQAll} \
      ~{if defined(samSamToolsPath) then ("--samtoolspath " +  '"' + samSamToolsPath + '"') else ""} \
      ~{true="--basecomposition" false="" baseBaseComposition} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--estimate" false="" estimateEstimate} \
      ~{if defined(estimateEstimateBase) then ("--estimatebase " +  '"' + estimateEstimateBase + '"') else ""} \
      ~{if defined(basicBasic) then ("--basic " +  '"' + basicBasic + '"') else ""} \
      ~{if defined(pmPmDpParam) then ("--PMDpparam " +  '"' + pmPmDpParam + '"') else ""} \
      ~{if defined(pmdPmdConstant) then ("--PMDconstant " +  '"' + pmdPmdConstant + '"') else ""} \
      ~{if defined(polymorphismPolymorphismAncient) then ("--polymorphism_ancient " +  '"' + polymorphismPolymorphismAncient + '"') else ""} \
      ~{if defined(polymorphismPolymorphismContamination) then ("--polymorphism_contamination " +  '"' + polymorphismPolymorphismContamination + '"') else ""} \
      ~{true="--dry" false="" dryDry} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(percPercIdentity) then ("--perc_identity " +  '"' + percPercIdentity + '"') else ""} \
      ~{if defined(requireRequireMapq) then ("--requiremapq " +  '"' + requireRequireMapq + '"') else ""} \
      ~{if defined(readReadLength) then ("--readlength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(maxMaxGc) then ("--maxGC " +  '"' + maxMaxGc + '"') else ""} \
      ~{if defined(mingMingC) then ("--minGC " +  '"' + mingMingC + '"') else ""} \
      ~{if defined(requireRequireBaseQ) then ("--requirebaseq " +  '"' + requireRequireBaseQ + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(upperUpperThreshold) then ("--upperthreshold " +  '"' + upperUpperThreshold + '"') else ""} \
      ~{true="--UDGplus" false="" udgUdgPlus} \
      ~{true="--noCpG" false="" noNoCpg} \
      ~{true="--UDGhalf" false="" udgUdgHalf} \
      ~{true="--UDGminus" false="" udgUdgMinus} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--writesamfield" false="" writesWritesAmField} \
      ~{true="--stats" false="" statsStats} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--printDS" false="" printPrintDs} \
      ~{true="--printalignments" false="" printPrintAlignments} \
      ~{true="--platypus" false="" platypusPlatypus} \
      ~{true="--deamination" false="" deaminationDeamination} \
      ~{true="--include_deamination" false="" includeIncludeDeamination} \
      ~{true="--include_indels" false="" includeIncludeIndels} \
      ~{true="--include_unknown" false="" includeIncludeUnknown} \
      ~{pmdPmdToolsMod} \
      ~{samSamFormattedDataWithMdFieldPresentFromStdin}
  >>>
}