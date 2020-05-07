version 1.0

task CsvtkSep {
  input {
    Boolean dropDrop
    String fieldsFields
    Boolean ignoreIgnoreCase
    Boolean mergeMerge
    String naNa
    String namesNames
    Int numNumCols
    Boolean removeRemove
    String sepSep
    Boolean useUseRegexp
    Int chunkChunkSize
    String commentCommentChar
    String delimiterDelimiter
    Boolean ignoreIgnoreEmptyRow
    Boolean ignoreIgnoreIllegalRow
    String inInFileList
    Boolean lazyLazyQuotes
    Boolean noNoHeaderRow
    Int numNumCpus
    String outOutDelimiter
    String outOutFile
    Boolean outOutTabs
    Boolean tabsTabs
    String? flagsFlags
  }
  command <<<
    csvtk sep \
      ~{flagsFlags} \
      ~{true="--drop" false="" dropDrop} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(naNa) then ("--na " +  '"' + naNa + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(numNumCols) then ("--num-cols " +  '"' + numNumCols + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{true="--use-regexp" false="" useUseRegexp} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(commentCommentChar) then ("--comment-char " +  '"' + commentCommentChar + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignoreIgnoreEmptyRow} \
      ~{true="--ignore-illegal-row" false="" ignoreIgnoreIllegalRow} \
      ~{if defined(inInFileList) then ("--infile-list " +  '"' + inInFileList + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazyLazyQuotes} \
      ~{true="--no-header-row" false="" noNoHeaderRow} \
      ~{if defined(numNumCpus) then ("--num-cpus " +  '"' + numNumCpus + '"') else ""} \
      ~{if defined(outOutDelimiter) then ("--out-delimiter " +  '"' + outOutDelimiter + '"') else ""} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{true="--out-tabs" false="" outOutTabs} \
      ~{true="--tabs" false="" tabsTabs}
  >>>
}