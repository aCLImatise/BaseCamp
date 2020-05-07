version 1.0

task SortGff.sh {
  input {
    String ignoreIgnoreLeadingBlanks
    String dictionaryDictionaryOrder
    String ignoreIgnoreCase
    Boolean generalGeneralNumericSort
    Boolean ignoreIgnoreNonPrinting
    Boolean monthMonthSort
    Boolean numericNumericSort
    Boolean randomRandomSort
    File randomRandomSource
    Boolean reverseReverse
    String sortSort
    Boolean versionVersionSort
    String parallelParallel
    Boolean uniqueUnique
    Boolean zeroZeroTerminated
  }
  command <<<
    sort-gff.sh \
      ~{if defined(ignoreIgnoreLeadingBlanks) then ("--ignore-leading-blanks " +  '"' + ignoreIgnoreLeadingBlanks + '"') else ""} \
      ~{if defined(dictionaryDictionaryOrder) then ("--dictionary-order " +  '"' + dictionaryDictionaryOrder + '"') else ""} \
      ~{if defined(ignoreIgnoreCase) then ("--ignore-case " +  '"' + ignoreIgnoreCase + '"') else ""} \
      ~{true="--general-numeric-sort" false="" generalGeneralNumericSort} \
      ~{true="--ignore-nonprinting" false="" ignoreIgnoreNonPrinting} \
      ~{true="--month-sort" false="" monthMonthSort} \
      ~{true="--numeric-sort" false="" numericNumericSort} \
      ~{true="--random-sort" false="" randomRandomSort} \
      ~{if defined(randomRandomSource) then ("--random-source " +  '"' + randomRandomSource + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--version-sort" false="" versionVersionSort} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}