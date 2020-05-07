version 1.0

task Ptx {
  input {
    Boolean autoAutoReference
    Boolean traditionalTraditional
    String flagFlagTruncation
    String macroMacroName
    String formatFormat
    Boolean rightRightSideRefs
    String sentenceSentenceRegexp
    String formatFormat
    String wordWordRegexp
    File breakBreakFile
    String ignoreIgnoreCase
    String gapGapSize
    File ignoreIgnoreFile
    File onlyOnlyFile
    String referencesReferences
    String typesetTypesetMode
  }
  command <<<
    ptx \
      ~{true="--auto-reference" false="" autoAutoReference} \
      ~{true="--traditional" false="" traditionalTraditional} \
      ~{if defined(flagFlagTruncation) then ("--flag-truncation " +  '"' + flagFlagTruncation + '"') else ""} \
      ~{if defined(macroMacroName) then ("--macro-name " +  '"' + macroMacroName + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--right-side-refs" false="" rightRightSideRefs} \
      ~{if defined(sentenceSentenceRegexp) then ("--sentence-regexp " +  '"' + sentenceSentenceRegexp + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(wordWordRegexp) then ("--word-regexp " +  '"' + wordWordRegexp + '"') else ""} \
      ~{if defined(breakBreakFile) then ("--break-file " +  '"' + breakBreakFile + '"') else ""} \
      ~{if defined(ignoreIgnoreCase) then ("--ignore-case " +  '"' + ignoreIgnoreCase + '"') else ""} \
      ~{if defined(gapGapSize) then ("--gap-size " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(ignoreIgnoreFile) then ("--ignore-file " +  '"' + ignoreIgnoreFile + '"') else ""} \
      ~{if defined(onlyOnlyFile) then ("--only-file " +  '"' + onlyOnlyFile + '"') else ""} \
      ~{if defined(referencesReferences) then ("--references " +  '"' + referencesReferences + '"') else ""} \
      ~{if defined(typesetTypesetMode) then ("--typeset-mode " +  '"' + typesetTypesetMode + '"') else ""}
  >>>
}