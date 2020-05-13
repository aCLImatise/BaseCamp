version 1.0

task Unstarch {
  input {
    Boolean elementsElements
    Boolean elementsElementsMaxStringLength
    Boolean basesBasesUniq
    Boolean hasHasDuplicateAsString
    Boolean hasHasNestedAsString
    Boolean listList
    Boolean listListJsonNoTrailingNewLine
    Boolean listListChr
    Boolean listListChromosomes
    Boolean noteNote
    Boolean signatureSignature
    Boolean verifyVerifySignature
    Boolean archiveArchiveTimestamp
    Boolean archiveArchiveType
    Boolean archiveArchiveVersion
    Boolean isIsStarch
  }
  command <<<
    unstarch \
      ~{true="--elements" false="" elementsElements} \
      ~{true="--elements-max-string-length" false="" elementsElementsMaxStringLength} \
      ~{true="--bases-uniq" false="" basesBasesUniq} \
      ~{true="--has-duplicate-as-string" false="" hasHasDuplicateAsString} \
      ~{true="--has-nested-as-string" false="" hasHasNestedAsString} \
      ~{true="--list" false="" listList} \
      ~{true="--list-json-no-trailing-newline" false="" listListJsonNoTrailingNewLine} \
      ~{true="--list-chr" false="" listListChr} \
      ~{true="--list-chromosomes" false="" listListChromosomes} \
      ~{true="--note" false="" noteNote} \
      ~{true="--signature" false="" signatureSignature} \
      ~{true="--verify-signature" false="" verifyVerifySignature} \
      ~{true="--archive-timestamp" false="" archiveArchiveTimestamp} \
      ~{true="--archive-type" false="" archiveArchiveType} \
      ~{true="--archive-version" false="" archiveArchiveVersion} \
      ~{true="--is-starch" false="" isIsStarch}
  >>>
}