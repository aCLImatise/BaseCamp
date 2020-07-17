version 1.0

task OmeroFsImporttime {
  input {
    Boolean? cache
    Boolean? summary
  }
  command <<<
    omero fs importtime \
      ~{true="--cache" false="" cache} \
      ~{true="--summary" false="" summary}
  >>>
  parameter_meta {
    cache: "to cache the results by annotating the fileset"
    summary: "summarize the results cached for filesets"
  }
}