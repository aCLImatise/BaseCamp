version 1.0

task Nl {
  input {
    String bodyBodyNumbering
    String sectionSectionDelimiter
    String footerFooterNumbering
    String headerHeaderNumbering
    String lineLineIncrement
    String joinJoinBlankLines
    String numberNumberFormat
    Boolean noNoReNumber
    String numberNumberSeparator
    String startingStartingLineNumber
    String numberNumberWidth
    String? aA
    String? tT
    String? nN
    String? pbPbRe
    String? lnLn
    String? rnRn
    String? rzRz
  }
  command <<<
    nl \
      ~{aA} \
      ~{lnLn} \
      ~{if defined(bodyBodyNumbering) then ("--body-numbering " +  '"' + bodyBodyNumbering + '"') else ""} \
      ~{if defined(sectionSectionDelimiter) then ("--section-delimiter " +  '"' + sectionSectionDelimiter + '"') else ""} \
      ~{if defined(footerFooterNumbering) then ("--footer-numbering " +  '"' + footerFooterNumbering + '"') else ""} \
      ~{if defined(headerHeaderNumbering) then ("--header-numbering " +  '"' + headerHeaderNumbering + '"') else ""} \
      ~{if defined(lineLineIncrement) then ("--line-increment " +  '"' + lineLineIncrement + '"') else ""} \
      ~{if defined(joinJoinBlankLines) then ("--join-blank-lines " +  '"' + joinJoinBlankLines + '"') else ""} \
      ~{if defined(numberNumberFormat) then ("--number-format " +  '"' + numberNumberFormat + '"') else ""} \
      ~{true="--no-renumber" false="" noNoReNumber} \
      ~{if defined(numberNumberSeparator) then ("--number-separator " +  '"' + numberNumberSeparator + '"') else ""} \
      ~{if defined(startingStartingLineNumber) then ("--starting-line-number " +  '"' + startingStartingLineNumber + '"') else ""} \
      ~{if defined(numberNumberWidth) then ("--number-width " +  '"' + numberNumberWidth + '"') else ""} \
      ~{tT} \
      ~{rnRn} \
      ~{nN} \
      ~{rzRz} \
      ~{pbPbRe}
  >>>
}