version 1.0

task Cuffnorm {
  input {
    Boolean oO
    Boolean lL
    Boolean normNormStandardsFile
    Boolean pP
    Boolean libraryLibraryType
    Boolean libraryLibraryNormMethod
    Boolean outputOutputFormat
    Boolean compatibleCompatibleHitsNorm
    Boolean totalTotalHitsNorm
    Boolean vV
    Boolean qQ
    Boolean seedSeed
    Boolean noNoUpdateCheck
  }
  command <<<
    cuffnorm \
      ~{true="-o" false="" oO} \
      ~{true="-L" false="" lL} \
      ~{true="--norm-standards-file" false="" normNormStandardsFile} \
      ~{true="-p" false="" pP} \
      ~{true="--library-type" false="" libraryLibraryType} \
      ~{true="--library-norm-method" false="" libraryLibraryNormMethod} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{true="--compatible-hits-norm" false="" compatibleCompatibleHitsNorm} \
      ~{true="--total-hits-norm" false="" totalTotalHitsNorm} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--no-update-check" false="" noNoUpdateCheck}
  >>>
}