version 1.0

task Faidx {
  input {
    Boolean noNoRebuild
    String bedBed
    String outOut
    String transformTransform
    Boolean complementComplement
    Boolean reverseReverse
    Boolean autoAutoStrand
    Int sizeSizeRange
    Boolean splitSplitFiles
    Boolean lazyLazy
    String defaultDefaultSeq
    Boolean maskMaskWithDefaultSeq
    Boolean maskMaskByCase
    Boolean noNoOutput
    Boolean noNoNames
    Boolean longLongNames
    Boolean noNoCoords
    String delimiterDelimiter
    String headerHeaderFunction
    String duplicatesDuplicatesAction
    String regexRegex
    Boolean invertInvertMatch
    String? fastFastA
    String? regionsRegions
  }
  command <<<
    faidx \
      ~{fastFastA} \
      ~{true="--no-rebuild" false="" noNoRebuild} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(transformTransform) then ("--transform " +  '"' + transformTransform + '"') else ""} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--auto-strand" false="" autoAutoStrand} \
      ~{if defined(sizeSizeRange) then ("--size-range " +  '"' + sizeSizeRange + '"') else ""} \
      ~{true="--split-files" false="" splitSplitFiles} \
      ~{true="--lazy" false="" lazyLazy} \
      ~{if defined(defaultDefaultSeq) then ("--default-seq " +  '"' + defaultDefaultSeq + '"') else ""} \
      ~{true="--mask-with-default-seq" false="" maskMaskWithDefaultSeq} \
      ~{true="--mask-by-case" false="" maskMaskByCase} \
      ~{true="--no-output" false="" noNoOutput} \
      ~{true="--no-names" false="" noNoNames} \
      ~{true="--long-names" false="" longLongNames} \
      ~{true="--no-coords" false="" noNoCoords} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(headerHeaderFunction) then ("--header-function " +  '"' + headerHeaderFunction + '"') else ""} \
      ~{if defined(duplicatesDuplicatesAction) then ("--duplicates-action " +  '"' + duplicatesDuplicatesAction + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{regionsRegions}
  >>>
}