version 1.0

task MetaeukUnitesetstofasta {
  input {
    Int proteinProtein
    Int translationTranslationTable
    Int targetTargetKey
    Int threadsThreads
    Int compressedCompressed
    Int vV
    String levyLevy
  }
  command <<<
    metaeuk unitesetstofasta \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(translationTranslationTable) then ("--translation-table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{if defined(targetTargetKey) then ("--target-key " +  '"' + targetTargetKey + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(compressedCompressed) then ("--compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(levyLevy) then ("- Levy " +  '"' + levyLevy + '"') else ""}
  >>>
}