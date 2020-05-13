version 1.0

task Scaladoc {
  input {
    Boolean authorAuthor
    Boolean diagramsDiagrams
    File diagramsDiagramsDotPath
    String diagramsDiagramsDotRestart
    String diagramsDiagramsDotTimeout
    String diagramsDiagramsMaxClasses
    String diagramsDiagramsMaxImplicitS
    Boolean docDocExternalDoc
    String docDocFooter
    Boolean docDocFormat
    String docDocGenerator
    File docDocNoCompile
    File docDocRootContent
    String docDocSourceUrl
    String docDocTitle
    String docDocVersion
    Boolean expandExpandAllTypes
    Boolean groupsGroups
    Boolean implicitImplicitS
    Boolean implicitImplicitSHide
    Boolean implicitImplicitSShowAll
    Boolean implicitImplicitSSoundShadowing
    Boolean noNoLinkWarnings
    Boolean noNoPrefixes
    Boolean rawRawOutput
    Boolean skipSkipPackages
    Boolean diagramsDiagramsDebug
    Boolean implicitImplicitSDebug
    String? sourceSourceFiles
  }
  command <<<
    scaladoc \
      ~{sourceSourceFiles} \
      ~{true="-author" false="" authorAuthor} \
      ~{true="-diagrams" false="" diagramsDiagrams} \
      ~{if defined(diagramsDiagramsDotPath) then ("-diagrams-dot-path " +  '"' + diagramsDiagramsDotPath + '"') else ""} \
      ~{if defined(diagramsDiagramsDotRestart) then ("-diagrams-dot-restart " +  '"' + diagramsDiagramsDotRestart + '"') else ""} \
      ~{if defined(diagramsDiagramsDotTimeout) then ("-diagrams-dot-timeout " +  '"' + diagramsDiagramsDotTimeout + '"') else ""} \
      ~{if defined(diagramsDiagramsMaxClasses) then ("-diagrams-max-classes " +  '"' + diagramsDiagramsMaxClasses + '"') else ""} \
      ~{if defined(diagramsDiagramsMaxImplicitS) then ("-diagrams-max-implicits " +  '"' + diagramsDiagramsMaxImplicitS + '"') else ""} \
      ~{true="-doc-external-doc" false="" docDocExternalDoc} \
      ~{if defined(docDocFooter) then ("-doc-footer " +  '"' + docDocFooter + '"') else ""} \
      ~{true="-doc-format" false="" docDocFormat} \
      ~{if defined(docDocGenerator) then ("-doc-generator " +  '"' + docDocGenerator + '"') else ""} \
      ~{if defined(docDocNoCompile) then ("-doc-no-compile " +  '"' + docDocNoCompile + '"') else ""} \
      ~{if defined(docDocRootContent) then ("-doc-root-content " +  '"' + docDocRootContent + '"') else ""} \
      ~{if defined(docDocSourceUrl) then ("-doc-source-url " +  '"' + docDocSourceUrl + '"') else ""} \
      ~{if defined(docDocTitle) then ("-doc-title " +  '"' + docDocTitle + '"') else ""} \
      ~{if defined(docDocVersion) then ("-doc-version " +  '"' + docDocVersion + '"') else ""} \
      ~{true="-expand-all-types" false="" expandExpandAllTypes} \
      ~{true="-groups" false="" groupsGroups} \
      ~{true="-implicits" false="" implicitImplicitS} \
      ~{true="-implicits-hide" false="" implicitImplicitSHide} \
      ~{true="-implicits-show-all" false="" implicitImplicitSShowAll} \
      ~{true="-implicits-sound-shadowing" false="" implicitImplicitSSoundShadowing} \
      ~{true="-no-link-warnings" false="" noNoLinkWarnings} \
      ~{true="-no-prefixes" false="" noNoPrefixes} \
      ~{true="-raw-output" false="" rawRawOutput} \
      ~{true="-skip-packages" false="" skipSkipPackages} \
      ~{true="-diagrams-debug" false="" diagramsDiagramsDebug} \
      ~{true="-implicits-debug" false="" implicitImplicitSDebug}
  >>>
}