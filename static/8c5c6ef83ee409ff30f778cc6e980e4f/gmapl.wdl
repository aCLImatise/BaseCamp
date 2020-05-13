version 1.0

task Gmapl.sse42 {
  input {
    String cmdlineCmdline
    Int partPart
    Int inputInputBufferSize
    Boolean noNoSplicing
    Int minMinIntronLength
    Int maxMaxIntronLengthMiddle
    Int maxMaxIntronLengthEnds
    Boolean splitSplitLargeIntrons
    Int trimTrimEndExons
    Int localLocalSpliceDist
    Int totalTotalLength
    Int chimeraChimeraMargin
    Boolean noNoChimeras
    Int nNThreads
    String chrChrSubset
    String directionDirection
    Int canonicalCanonicalMode
    Boolean crossCrossSpecies
    Int allowAllowCloseIndels
    Float microMicroExonSpliceProb
    String cCMetDir
    String atoiAtoiDir
    String modeMode
    Boolean prunePruneLevel
    Boolean compressCompress
    String exonsExons
    Boolean proteinProteinDna
    Boolean proteinProteinGen
    Int formatFormat
    Boolean chimeraChimeraOverlap
    Boolean failsFailsOnly
    Boolean noNoFails
    String snpsSnpsDir
    String useUseSnps
    String splitSplitOutput
    String failedFailedInput
    Boolean appendAppendOutput
    Int outputOutputBufferSize
    Int translationTranslationCode
    Boolean altAltStartCodons
    Boolean fullFullLength
    Int cdsCdsStart
    Boolean truncateTruncate
    Boolean tolerantTolerant
    Int gff3Gff3AddSeparators
    Int gff3Gff3SwapPhase
    String gff3Gff3Cds
    Boolean noNoSamHeaders
    Boolean samSamUse0m
    Boolean samSamExtendedCigar
    Boolean forceForceXsDir
    Boolean mdMdLowercaseSnp
    Boolean actionActionIfCigarError
    String readReadGroupId
    String readReadGroupName
    String readReadGroupLibrary
    String readReadGroupPlatform
    String qualityQualityProtocol
    Int qualityQualityPrintShift
    Directory mapMapDir
    String mapMap
    Boolean mapMapExons
    Boolean mapMapBoth
    Int flankingFlanking
    Boolean printPrintComment
    Boolean noNoLengths
    Int invertInvertMode
    Int intronIntronGap
    Int wrapWrapLength
    Float minMinTrimmedCoverage
    Float minMinIdentity
    Boolean checkCheck
  }
  command <<<
    gmapl.sse42 \
      ~{if defined(cmdlineCmdline) then ("--cmdline " +  '"' + cmdlineCmdline + '"') else ""} \
      ~{if defined(partPart) then ("--part " +  '"' + partPart + '"') else ""} \
      ~{if defined(inputInputBufferSize) then ("--input-buffer-size " +  '"' + inputInputBufferSize + '"') else ""} \
      ~{true="--nosplicing" false="" noNoSplicing} \
      ~{if defined(minMinIntronLength) then ("--min-intronlength " +  '"' + minMinIntronLength + '"') else ""} \
      ~{if defined(maxMaxIntronLengthMiddle) then ("--max-intronlength-middle " +  '"' + maxMaxIntronLengthMiddle + '"') else ""} \
      ~{if defined(maxMaxIntronLengthEnds) then ("--max-intronlength-ends " +  '"' + maxMaxIntronLengthEnds + '"') else ""} \
      ~{true="--split-large-introns" false="" splitSplitLargeIntrons} \
      ~{if defined(trimTrimEndExons) then ("--trim-end-exons " +  '"' + trimTrimEndExons + '"') else ""} \
      ~{if defined(localLocalSpliceDist) then ("--localsplicedist " +  '"' + localLocalSpliceDist + '"') else ""} \
      ~{if defined(totalTotalLength) then ("--totallength " +  '"' + totalTotalLength + '"') else ""} \
      ~{if defined(chimeraChimeraMargin) then ("--chimera-margin " +  '"' + chimeraChimeraMargin + '"') else ""} \
      ~{true="--no-chimeras" false="" noNoChimeras} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(chrChrSubset) then ("--chrsubset " +  '"' + chrChrSubset + '"') else ""} \
      ~{if defined(directionDirection) then ("--direction " +  '"' + directionDirection + '"') else ""} \
      ~{if defined(canonicalCanonicalMode) then ("--canonical-mode " +  '"' + canonicalCanonicalMode + '"') else ""} \
      ~{true="--cross-species" false="" crossCrossSpecies} \
      ~{if defined(allowAllowCloseIndels) then ("--allow-close-indels " +  '"' + allowAllowCloseIndels + '"') else ""} \
      ~{if defined(microMicroExonSpliceProb) then ("--microexon-spliceprob " +  '"' + microMicroExonSpliceProb + '"') else ""} \
      ~{if defined(cCMetDir) then ("--cmetdir " +  '"' + cCMetDir + '"') else ""} \
      ~{if defined(atoiAtoiDir) then ("--atoidir " +  '"' + atoiAtoiDir + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--prunelevel" false="" prunePruneLevel} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(exonsExons) then ("--exons " +  '"' + exonsExons + '"') else ""} \
      ~{true="--protein_dna" false="" proteinProteinDna} \
      ~{true="--protein_gen" false="" proteinProteinGen} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--chimera-overlap" false="" chimeraChimeraOverlap} \
      ~{true="--failsonly" false="" failsFailsOnly} \
      ~{true="--nofails" false="" noNoFails} \
      ~{if defined(snpsSnpsDir) then ("--snpsdir " +  '"' + snpsSnpsDir + '"') else ""} \
      ~{if defined(useUseSnps) then ("--use-snps " +  '"' + useUseSnps + '"') else ""} \
      ~{if defined(splitSplitOutput) then ("--split-output " +  '"' + splitSplitOutput + '"') else ""} \
      ~{if defined(failedFailedInput) then ("--failed-input " +  '"' + failedFailedInput + '"') else ""} \
      ~{true="--append-output" false="" appendAppendOutput} \
      ~{if defined(outputOutputBufferSize) then ("--output-buffer-size " +  '"' + outputOutputBufferSize + '"') else ""} \
      ~{if defined(translationTranslationCode) then ("--translation-code " +  '"' + translationTranslationCode + '"') else ""} \
      ~{true="--alt-start-codons" false="" altAltStartCodons} \
      ~{true="--fulllength" false="" fullFullLength} \
      ~{if defined(cdsCdsStart) then ("--cdsstart " +  '"' + cdsCdsStart + '"') else ""} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{true="--tolerant" false="" tolerantTolerant} \
      ~{if defined(gff3Gff3AddSeparators) then ("--gff3-add-separators " +  '"' + gff3Gff3AddSeparators + '"') else ""} \
      ~{if defined(gff3Gff3SwapPhase) then ("--gff3-swap-phase " +  '"' + gff3Gff3SwapPhase + '"') else ""} \
      ~{if defined(gff3Gff3Cds) then ("--gff3-cds " +  '"' + gff3Gff3Cds + '"') else ""} \
      ~{true="--no-sam-headers" false="" noNoSamHeaders} \
      ~{true="--sam-use-0M" false="" samSamUse0m} \
      ~{true="--sam-extended-cigar" false="" samSamExtendedCigar} \
      ~{true="--force-xs-dir" false="" forceForceXsDir} \
      ~{true="--md-lowercase-snp" false="" mdMdLowercaseSnp} \
      ~{true="--action-if-cigar-error" false="" actionActionIfCigarError} \
      ~{if defined(readReadGroupId) then ("--read-group-id " +  '"' + readReadGroupId + '"') else ""} \
      ~{if defined(readReadGroupName) then ("--read-group-name " +  '"' + readReadGroupName + '"') else ""} \
      ~{if defined(readReadGroupLibrary) then ("--read-group-library " +  '"' + readReadGroupLibrary + '"') else ""} \
      ~{if defined(readReadGroupPlatform) then ("--read-group-platform " +  '"' + readReadGroupPlatform + '"') else ""} \
      ~{if defined(qualityQualityProtocol) then ("--quality-protocol " +  '"' + qualityQualityProtocol + '"') else ""} \
      ~{if defined(qualityQualityPrintShift) then ("--quality-print-shift " +  '"' + qualityQualityPrintShift + '"') else ""} \
      ~{if defined(mapMapDir) then ("--mapdir " +  '"' + mapMapDir + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{true="--mapexons" false="" mapMapExons} \
      ~{true="--mapboth" false="" mapMapBoth} \
      ~{if defined(flankingFlanking) then ("--flanking " +  '"' + flankingFlanking + '"') else ""} \
      ~{true="--print-comment" false="" printPrintComment} \
      ~{true="--nolengths" false="" noNoLengths} \
      ~{if defined(invertInvertMode) then ("--invertmode " +  '"' + invertInvertMode + '"') else ""} \
      ~{if defined(intronIntronGap) then ("--introngap " +  '"' + intronIntronGap + '"') else ""} \
      ~{if defined(wrapWrapLength) then ("--wraplength " +  '"' + wrapWrapLength + '"') else ""} \
      ~{if defined(minMinTrimmedCoverage) then ("--min-trimmed-coverage " +  '"' + minMinTrimmedCoverage + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{true="--check" false="" checkCheck}
  >>>
}