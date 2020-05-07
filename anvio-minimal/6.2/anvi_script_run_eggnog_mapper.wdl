version 1.0

task AnviScriptRunEggnogMapper {
  input {
    String contigsContigsDb
    String cogCogDataDir
    String numNumThreads
    Boolean dropDropPreviousAnnotations
    String annotationAnnotation
    String useUseVersion
  }
  command <<<
    anvi-script-run-eggnog-mapper \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(cogCogDataDir) then ("--cog-data-dir " +  '"' + cogCogDataDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--drop-previous-annotations" false="" dropDropPreviousAnnotations} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(useUseVersion) then ("--use-version " +  '"' + useUseVersion + '"') else ""}
  >>>
}