version 1.0

task Rdoc {
  input {
    Boolean accessAccessOr
    Boolean diagramDiagram
    Boolean helpHelpOutput
    Boolean imageImageFormat
    Boolean inlineInlineSource
    Boolean mergeMerge
    Boolean oneOneFile
    Boolean opOpName
    Boolean opnameOpname
    Boolean promiscuousPromiscuous
    Boolean riRiSystem
    String eE
    Boolean encodingEncoding
    String localeLocale
    String localeLocaleDataDir
    Boolean allAll
    String excludeExclude
    String extensionExtension
    Boolean uU
    Boolean pipePipe
    String tabTabWidth
    String visibilityVisibility
    String markupMarkup
    String rootRoot
    String pagePageDir
    Boolean forceForceOutput
    String formatFormat
    String includeInclude
    Boolean cC
    String outputOutput
    Boolean dD
    String charsetCharset
    Boolean hyperlinkHyperlinkAll
    String mainMain
    Boolean nN
    Boolean showShowHash
    String templateTemplate
    File templateTemplateStylesheets
    String titleTitle
    File copyCopyFiles
    String webWebCvs
    Boolean riRi
    Boolean riRiSite
    Boolean dD
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    rdoc \
      ~{true="--accessor" false="" accessAccessOr} \
      ~{true="--diagram" false="" diagramDiagram} \
      ~{true="--help-output" false="" helpHelpOutput} \
      ~{true="--image-format" false="" imageImageFormat} \
      ~{true="--inline-source" false="" inlineInlineSource} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--one-file" false="" oneOneFile} \
      ~{true="--op-name" false="" opOpName} \
      ~{true="--opname" false="" opnameOpname} \
      ~{true="--promiscuous" false="" promiscuousPromiscuous} \
      ~{true="--ri-system" false="" riRiSystem} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="--encoding" false="" encodingEncoding} \
      ~{if defined(localeLocale) then ("--locale " +  '"' + localeLocale + '"') else ""} \
      ~{if defined(localeLocaleDataDir) then ("--locale-data-dir " +  '"' + localeLocaleDataDir + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""} \
      ~{true="-U" false="" uU} \
      ~{true="--pipe" false="" pipePipe} \
      ~{if defined(tabTabWidth) then ("--tab-width " +  '"' + tabTabWidth + '"') else ""} \
      ~{if defined(visibilityVisibility) then ("--visibility " +  '"' + visibilityVisibility + '"') else ""} \
      ~{if defined(markupMarkup) then ("--markup " +  '"' + markupMarkup + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(pagePageDir) then ("--page-dir " +  '"' + pagePageDir + '"') else ""} \
      ~{true="--force-output" false="" forceForceOutput} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(charsetCharset) then ("--charset " +  '"' + charsetCharset + '"') else ""} \
      ~{true="--hyperlink-all" false="" hyperlinkHyperlinkAll} \
      ~{if defined(mainMain) then ("--main " +  '"' + mainMain + '"') else ""} \
      ~{true="-N" false="" nN} \
      ~{true="--show-hash" false="" showShowHash} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(templateTemplateStylesheets) then ("--template-stylesheets " +  '"' + templateTemplateStylesheets + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(copyCopyFiles) then ("--copy-files " +  '"' + copyCopyFiles + '"') else ""} \
      ~{if defined(webWebCvs) then ("--webcvs " +  '"' + webWebCvs + '"') else ""} \
      ~{true="--ri" false="" riRi} \
      ~{true="--ri-site" false="" riRiSite} \
      ~{true="-D" false="" dD} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}