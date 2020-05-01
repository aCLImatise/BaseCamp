version 1.0

task Pr {
  input {
    Boolean showShowControlChars
    Boolean doubleDoubleSpace
    String dateDateFormat
    Boolean eE
    Boolean formFormFeed
    String headerHeader
    Boolean iI
    Boolean joinJoinLines
    String lengthLength
    Boolean mergeMerge
    Boolean nN
    String firstFirstLineNumber
    String indentIndent
    Boolean noNoFileWarnings
    Boolean sS
    Boolean sS
    Boolean omitOmitHeader
    Boolean omitOmitPagination
    Boolean showShowNonPrinting
    String widthWidth
    String pagePageWidth
  }
  command <<<
    pr \
      ~{true="--show-control-chars" false="" showShowControlChars} \
      ~{true="--double-space" false="" doubleDoubleSpace} \
      ~{if defined(dateDateFormat) then ("--date-format " +  '"' + dateDateFormat + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="--form-feed" false="" formFormFeed} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="--join-lines" false="" joinJoinLines} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="-n" false="" nN} \
      ~{if defined(firstFirstLineNumber) then ("--first-line-number " +  '"' + firstFirstLineNumber + '"') else ""} \
      ~{if defined(indentIndent) then ("--indent " +  '"' + indentIndent + '"') else ""} \
      ~{true="--no-file-warnings" false="" noNoFileWarnings} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="--omit-header" false="" omitOmitHeader} \
      ~{true="--omit-pagination" false="" omitOmitPagination} \
      ~{true="--show-nonprinting" false="" showShowNonPrinting} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(pagePageWidth) then ("--page-width " +  '"' + pagePageWidth + '"') else ""}
  >>>
}