version 1.0

task Tidyp {
  input {
    Boolean modifyModify
    Boolean upperUpper
    Boolean cleanClean
    Boolean bareBare
    Boolean numericNumeric
    Boolean errorsErrors
    Boolean quietQuiet
    Boolean omitOmit
    Boolean xmlXml
    Boolean asAsXhtml
    Boolean asAsHtml
    String accessAccess
    Boolean rawRaw
    Boolean asciiAscii
    Boolean latinLatin0
    Boolean latinLatin1
    Boolean iso2022Iso2022
    Boolean utf8Utf8
    Boolean macMac
    Boolean win1252Win1252
    Boolean ibm858Ibm858
    Boolean utf16leUtf16le
    Boolean utf16beUtf16be
    Boolean utf16Utf16
    Boolean big5Big5
    Boolean shiftShiftJis
    String languageLanguage
    Boolean versionVersion
    Boolean xmlXmlHelp
    Boolean helpHelpConfig
    Boolean xmlXmlConfig
    Boolean showShowConfig
  }
  command <<<
    tidyp \
      ~{true="-modify" false="" modifyModify} \
      ~{true="-upper" false="" upperUpper} \
      ~{true="-clean" false="" cleanClean} \
      ~{true="-bare" false="" bareBare} \
      ~{true="-numeric" false="" numericNumeric} \
      ~{true="-errors" false="" errorsErrors} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-omit" false="" omitOmit} \
      ~{true="-xml" false="" xmlXml} \
      ~{true="-asxhtml" false="" asAsXhtml} \
      ~{true="-ashtml" false="" asAsHtml} \
      ~{if defined(accessAccess) then ("-access " +  '"' + accessAccess + '"') else ""} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-ascii" false="" asciiAscii} \
      ~{true="-latin0" false="" latinLatin0} \
      ~{true="-latin1" false="" latinLatin1} \
      ~{true="-iso2022" false="" iso2022Iso2022} \
      ~{true="-utf8" false="" utf8Utf8} \
      ~{true="-mac" false="" macMac} \
      ~{true="-win1252" false="" win1252Win1252} \
      ~{true="-ibm858" false="" ibm858Ibm858} \
      ~{true="-utf16le" false="" utf16leUtf16le} \
      ~{true="-utf16be" false="" utf16beUtf16be} \
      ~{true="-utf16" false="" utf16Utf16} \
      ~{true="-big5" false="" big5Big5} \
      ~{true="-shiftjis" false="" shiftShiftJis} \
      ~{if defined(languageLanguage) then ("-language " +  '"' + languageLanguage + '"') else ""} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-xml-help" false="" xmlXmlHelp} \
      ~{true="-help-config" false="" helpHelpConfig} \
      ~{true="-xml-config" false="" xmlXmlConfig} \
      ~{true="-show-config" false="" showShowConfig}
  >>>
}