version 1.0

task ExcludeUidLists {
  input {
    String batchBatchSize
    String ignoreIgnoreLeadingBlanks
    String checkCheck
    String checkCheck
    String compressCompressProgram
    String dictionaryDictionaryOrder
    Boolean debugDebug
    String ignoreIgnoreCase
    String filesFiles0From
    Boolean generalGeneralNumericSort
    Boolean ignoreIgnoreNonPrinting
    String keyKey
    Boolean mergeMerge
    Boolean monthMonthSort
    File outputOutput
    String parallelParallel
    File randomRandomSource
    Boolean randomRandomSort
    Boolean reverseReverse
    Int bufferBufferSize
    String sortSort
    Boolean stableStable
    String fieldFieldSeparator
    String temporaryTemporaryDirectory
    Boolean uniqueUnique
    Boolean versionVersionSort
    Boolean zeroZeroTerminated
  }
  command <<<
    exclude-uid-lists \
      ~{if defined(batchBatchSize) then ("--batch-size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(ignoreIgnoreLeadingBlanks) then ("--ignore-leading-blanks " +  '"' + ignoreIgnoreLeadingBlanks + '"') else ""} \
      ~{if defined(checkCheck) then ("--check " +  '"' + checkCheck + '"') else ""} \
      ~{if defined(checkCheck) then ("--check " +  '"' + checkCheck + '"') else ""} \
      ~{if defined(compressCompressProgram) then ("--compress-program " +  '"' + compressCompressProgram + '"') else ""} \
      ~{if defined(dictionaryDictionaryOrder) then ("--dictionary-order " +  '"' + dictionaryDictionaryOrder + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(ignoreIgnoreCase) then ("--ignore-case " +  '"' + ignoreIgnoreCase + '"') else ""} \
      ~{if defined(filesFiles0From) then ("--files0-from " +  '"' + filesFiles0From + '"') else ""} \
      ~{true="--general-numeric-sort" false="" generalGeneralNumericSort} \
      ~{true="--ignore-nonprinting" false="" ignoreIgnoreNonPrinting} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--month-sort" false="" monthMonthSort} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{if defined(randomRandomSource) then ("--random-source " +  '"' + randomRandomSource + '"') else ""} \
      ~{true="--random-sort" false="" randomRandomSort} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--stable" false="" stableStable} \
      ~{if defined(fieldFieldSeparator) then ("--field-separator " +  '"' + fieldFieldSeparator + '"') else ""} \
      ~{if defined(temporaryTemporaryDirectory) then ("--temporary-directory " +  '"' + temporaryTemporaryDirectory + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--version-sort" false="" versionVersionSort} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}