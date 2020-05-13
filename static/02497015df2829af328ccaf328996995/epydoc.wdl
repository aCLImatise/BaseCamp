version 1.0

task Epydoc {
  input {
    Boolean htmlHtml
    Boolean textText
    Boolean latexLatex
    Boolean dviDvi
    Boolean psPs
    Boolean pdfPdf
    Boolean checkCheck
    Boolean picklePickle
    String docDocFormat
    Boolean parseParseOnly
    Boolean introspectIntrospectOnly
    String excludeExclude
    String excludeExcludeIntrospect
    String excludeExcludeParse
    String inheritanceInheritance
    Boolean showShowPrivate
    Boolean noNoPrivate
    Boolean showShowImports
    Boolean noNoImports
    Boolean showShowSourceCode
    Boolean noNoSourceCode
    Boolean includeIncludeLog
    Boolean redundantRedundantDetails
    String nameName
    String cssCss
    String urlUrl
    String navNavLink
    String topTop
    File helpHelpFile
    Boolean showShowFrames
    Boolean noNoFrames
    Boolean separateSeparateClasses
    String srcSrcCodeTabWidth
    String graphGraph
    File dotDotPath
    String graphGraphFont
    Int graphGraphFontSize
    File pstPstAt
    Boolean failFailOnError
    Boolean failFailOnWarning
    Boolean failFailOnDocstringWarning
    String? actionAction
    String? namesNames
  }
  command <<<
    epydoc \
      ~{actionAction} \
      ~{true="--html" false="" htmlHtml} \
      ~{true="--text" false="" textText} \
      ~{true="--latex" false="" latexLatex} \
      ~{true="--dvi" false="" dviDvi} \
      ~{true="--ps" false="" psPs} \
      ~{true="--pdf" false="" pdfPdf} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--pickle" false="" picklePickle} \
      ~{if defined(docDocFormat) then ("--docformat " +  '"' + docDocFormat + '"') else ""} \
      ~{true="--parse-only" false="" parseParseOnly} \
      ~{true="--introspect-only" false="" introspectIntrospectOnly} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(excludeExcludeIntrospect) then ("--exclude-introspect " +  '"' + excludeExcludeIntrospect + '"') else ""} \
      ~{if defined(excludeExcludeParse) then ("--exclude-parse " +  '"' + excludeExcludeParse + '"') else ""} \
      ~{if defined(inheritanceInheritance) then ("--inheritance " +  '"' + inheritanceInheritance + '"') else ""} \
      ~{true="--show-private" false="" showShowPrivate} \
      ~{true="--no-private" false="" noNoPrivate} \
      ~{true="--show-imports" false="" showShowImports} \
      ~{true="--no-imports" false="" noNoImports} \
      ~{true="--show-sourcecode" false="" showShowSourceCode} \
      ~{true="--no-sourcecode" false="" noNoSourceCode} \
      ~{true="--include-log" false="" includeIncludeLog} \
      ~{true="--redundant-details" false="" redundantRedundantDetails} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(cssCss) then ("--css " +  '"' + cssCss + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(navNavLink) then ("--navlink " +  '"' + navNavLink + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(helpHelpFile) then ("--help-file " +  '"' + helpHelpFile + '"') else ""} \
      ~{true="--show-frames" false="" showShowFrames} \
      ~{true="--no-frames" false="" noNoFrames} \
      ~{true="--separate-classes" false="" separateSeparateClasses} \
      ~{if defined(srcSrcCodeTabWidth) then ("--src-code-tab-width " +  '"' + srcSrcCodeTabWidth + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(dotDotPath) then ("--dotpath " +  '"' + dotDotPath + '"') else ""} \
      ~{if defined(graphGraphFont) then ("--graph-font " +  '"' + graphGraphFont + '"') else ""} \
      ~{if defined(graphGraphFontSize) then ("--graph-font-size " +  '"' + graphGraphFontSize + '"') else ""} \
      ~{if defined(pstPstAt) then ("--pstat " +  '"' + pstPstAt + '"') else ""} \
      ~{true="--fail-on-error" false="" failFailOnError} \
      ~{true="--fail-on-warning" false="" failFailOnWarning} \
      ~{true="--fail-on-docstring-warning" false="" failFailOnDocstringWarning} \
      ~{namesNames}
  >>>
}