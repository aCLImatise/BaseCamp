version 1.0

task AnviExportFunctions {
  input {
    Boolean listListAnnotationSources
  }
  command <<<
    anvi-export-functions \
      ~{true="--list-annotation-sources" false="" listListAnnotationSources}
  >>>
}