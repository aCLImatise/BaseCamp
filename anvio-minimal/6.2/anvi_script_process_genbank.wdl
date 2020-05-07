version 1.0

task AnviScriptProcessGenbank {
  input {
    String inputInputGenbank
    String annotationAnnotationSource
    String annotationAnnotationVersion
  }
  command <<<
    anvi-script-process-genbank \
      ~{if defined(inputInputGenbank) then ("--input-genbank " +  '"' + inputInputGenbank + '"') else ""} \
      ~{if defined(annotationAnnotationSource) then ("--annotation-source " +  '"' + annotationAnnotationSource + '"') else ""} \
      ~{if defined(annotationAnnotationVersion) then ("--annotation-version " +  '"' + annotationAnnotationVersion + '"') else ""}
  >>>
}