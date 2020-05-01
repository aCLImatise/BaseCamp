version 1.0

task Pmdtools {
  input {
    Boolean adjustsAdjustsS
    Int numberNumber
    String chromosomeChromosome
    String requireRequireMapq
    String readReadLength
    Int maxlengthMaxlength
    Int minlengthMinlength
    Int maxMaxGc
    Int mingMingC
    String requireRequireBaseQ
    Boolean deaminationDeamination
    Boolean udgUdgPlus
    Boolean ssSs
    Boolean pmPmDspRim
    String pmPmDspRimThreshold
    Boolean udgUdgHalf
    Boolean udgUdgMinus
    Boolean ecoliEcoliCpg
    Boolean ecoliEcoli
    Boolean masksMasksS
    Boolean leipzigLeipzigSimple
    String customCustomTerminus
    Boolean flagsFlagsS
    Boolean noNoCpg
    Boolean firstFirst
    String rangeRange
    String polymorphismPolymorphismAncient
    String polymorphismPolymorphismContamination
    String pmPmDpParam
    String pmdPmdConstant
    Boolean noNoClips
    Boolean noNoIndels
    Boolean onlyOnlyClips
    Boolean onlyOnlyDeletions
    Boolean onlyOnlyInsertions
    Boolean noNoDeletions
    Boolean noNoInsertions
    Boolean notNotReverse
    Boolean printPrintDs
    Boolean verboseVerbose
    Boolean printPrintAlignments
    String maskMaskTerminalDeaminationS
    String maskMaskTerminalBases
    String thresholdThreshold
    String upperUpperThreshold
    String percPercIdentity
    Boolean adjustAdjustBaseQ
    Boolean adjustAdjustBaseQAll
    Boolean dryDry
    String samSamToolsPath
    Boolean baseBaseComposition
    String refseqRefseq
    Boolean headerHeader
    Boolean estimateEstimate
    String estimateEstimateBase
    Boolean platypusPlatypus
    Boolean writesWritesAmField
    String basicBasic
    Boolean terminalTerminal
    Boolean statsStats
    String? pythonPython
    String? pmdPmdTools
    String? samSamFormattedDataWithMdFieldPresentFromStdin
  }
  command <<<
    pmdtools \
      ~{pythonPython} \
      ~{true="--adjustss" false="" adjustsAdjustsS} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(requireRequireMapq) then ("--requiremapq " +  '"' + requireRequireMapq + '"') else ""} \
      ~{if defined(readReadLength) then ("--readlength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(maxMaxGc) then ("--maxGC " +  '"' + maxMaxGc + '"') else ""} \
      ~{if defined(mingMingC) then ("--minGC " +  '"' + mingMingC + '"') else ""} \
      ~{if defined(requireRequireBaseQ) then ("--requirebaseq " +  '"' + requireRequireBaseQ + '"') else ""} \
      ~{true="--deamination" false="" deaminationDeamination} \
      ~{true="--UDGplus" false="" udgUdgPlus} \
      ~{true="--ss" false="" ssSs} \
      ~{true="--PMDSprim" false="" pmPmDspRim} \
      ~{if defined(pmPmDspRimThreshold) then ("--PMDSprimthreshold " +  '"' + pmPmDspRimThreshold + '"') else ""} \
      ~{true="--UDGhalf" false="" udgUdgHalf} \
      ~{true="--UDGminus" false="" udgUdgMinus} \
      ~{true="--EcoliCpG" false="" ecoliEcoliCpg} \
      ~{true="--Ecoli" false="" ecoliEcoli} \
      ~{true="--maskss" false="" masksMasksS} \
      ~{true="--Leipzigsimple" false="" leipzigLeipzigSimple} \
      ~{if defined(customCustomTerminus) then ("--customterminus " +  '"' + customCustomTerminus + '"') else ""} \
      ~{true="--flagss" false="" flagsFlagsS} \
      ~{true="--noCpG" false="" noNoCpg} \
      ~{true="--first" false="" firstFirst} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(polymorphismPolymorphismAncient) then ("--polymorphism_ancient " +  '"' + polymorphismPolymorphismAncient + '"') else ""} \
      ~{if defined(polymorphismPolymorphismContamination) then ("--polymorphism_contamination " +  '"' + polymorphismPolymorphismContamination + '"') else ""} \
      ~{if defined(pmPmDpParam) then ("--PMDpparam " +  '"' + pmPmDpParam + '"') else ""} \
      ~{if defined(pmdPmdConstant) then ("--PMDconstant " +  '"' + pmdPmdConstant + '"') else ""} \
      ~{true="--noclips" false="" noNoClips} \
      ~{true="--noindels" false="" noNoIndels} \
      ~{true="--onlyclips" false="" onlyOnlyClips} \
      ~{true="--onlydeletions" false="" onlyOnlyDeletions} \
      ~{true="--onlyinsertions" false="" onlyOnlyInsertions} \
      ~{true="--nodeletions" false="" noNoDeletions} \
      ~{true="--noinsertions" false="" noNoInsertions} \
      ~{true="--notreverse" false="" notNotReverse} \
      ~{true="--printDS" false="" printPrintDs} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--printalignments" false="" printPrintAlignments} \
      ~{if defined(maskMaskTerminalDeaminationS) then ("--maskterminaldeaminations " +  '"' + maskMaskTerminalDeaminationS + '"') else ""} \
      ~{if defined(maskMaskTerminalBases) then ("--maskterminalbases " +  '"' + maskMaskTerminalBases + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(upperUpperThreshold) then ("--upperthreshold " +  '"' + upperUpperThreshold + '"') else ""} \
      ~{if defined(percPercIdentity) then ("--perc_identity " +  '"' + percPercIdentity + '"') else ""} \
      ~{true="--adjustbaseq" false="" adjustAdjustBaseQ} \
      ~{true="--adjustbaseq_all" false="" adjustAdjustBaseQAll} \
      ~{true="--dry" false="" dryDry} \
      ~{if defined(samSamToolsPath) then ("--samtoolspath " +  '"' + samSamToolsPath + '"') else ""} \
      ~{true="--basecomposition" false="" baseBaseComposition} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--estimate" false="" estimateEstimate} \
      ~{if defined(estimateEstimateBase) then ("--estimatebase " +  '"' + estimateEstimateBase + '"') else ""} \
      ~{true="--platypus" false="" platypusPlatypus} \
      ~{true="--writesamfield" false="" writesWritesAmField} \
      ~{if defined(basicBasic) then ("--basic " +  '"' + basicBasic + '"') else ""} \
      ~{true="--terminal" false="" terminalTerminal} \
      ~{true="--stats" false="" statsStats} \
      ~{pmdPmdTools} \
      ~{samSamFormattedDataWithMdFieldPresentFromStdin}
  >>>
}