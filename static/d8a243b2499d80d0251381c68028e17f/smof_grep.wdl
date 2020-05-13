version 1.0

task SmofGrep {
  input {
    Boolean matchMatchSequence
    File fileFile
    Boolean filesFilesWithoutMatch
    Boolean filesFilesWithMatches
    String wrapWrap
    Boolean perlPerlRegexp
    Boolean ambiguousAmbiguousNucl
    Boolean caseCaseSensitive
    Boolean invertInvertMatch
    Boolean onlyOnlyMatching
    String beforeBeforeContext
    String afterAfterContext
    String contextContext
    Boolean countCount
    Boolean countCountMatches
    Boolean lineLineRegexp
    Boolean exactExact
    Boolean gappedGapped
    Boolean bothBothStrands
    Boolean reverseReverseOnly
    Boolean noNoColor
    Boolean forceForceColor
    Boolean preservePreserveColor
    String colorColor
    Boolean gffGff
    String gffGffType
    String fastaFastaIn
    String? patternPattern
    String? inputInput
  }
  command <<<
    smof grep \
      ~{patternPattern} \
      ~{true="--match-sequence" false="" matchMatchSequence} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--files-without-match" false="" filesFilesWithoutMatch} \
      ~{true="--files-with-matches" false="" filesFilesWithMatches} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{true="--perl-regexp" false="" perlPerlRegexp} \
      ~{true="--ambiguous-nucl" false="" ambiguousAmbiguousNucl} \
      ~{true="--case-sensitive" false="" caseCaseSensitive} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{true="--only-matching" false="" onlyOnlyMatching} \
      ~{if defined(beforeBeforeContext) then ("--before-context " +  '"' + beforeBeforeContext + '"') else ""} \
      ~{if defined(afterAfterContext) then ("--after-context " +  '"' + afterAfterContext + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--count-matches" false="" countCountMatches} \
      ~{true="--line-regexp" false="" lineLineRegexp} \
      ~{true="--exact" false="" exactExact} \
      ~{true="--gapped" false="" gappedGapped} \
      ~{true="--both-strands" false="" bothBothStrands} \
      ~{true="--reverse-only" false="" reverseReverseOnly} \
      ~{true="--no-color" false="" noNoColor} \
      ~{true="--force-color" false="" forceForceColor} \
      ~{true="--preserve-color" false="" preservePreserveColor} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{true="--gff" false="" gffGff} \
      ~{if defined(gffGffType) then ("--gff-type " +  '"' + gffGffType + '"') else ""} \
      ~{if defined(fastaFastaIn) then ("--fastain " +  '"' + fastaFastaIn + '"') else ""} \
      ~{inputInput}
  >>>
}