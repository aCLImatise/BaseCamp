version 1.0

task ParsecHistoriesUpdateHistory {
  input {
    String? annotation
    Boolean? deleted
    Boolean? importable
    String? name
    Boolean? published
    Boolean? purged
    String? tags
    String history_id
  }
  command <<<
    parsec histories update_history \
      ~{history_id} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (deleted) then "--deleted" else ""} \
      ~{if (importable) then "--importable" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (published) then "--published" else ""} \
      ~{if (purged) then "--purged" else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    annotation: "Replace history annotation with given string"
    deleted: "Mark or unmark history as deleted"
    importable: "Mark or unmark history as importable"
    name: "Replace history name with the given string"
    published: "Mark or unmark history as published"
    purged: "If ``True``, mark history as purged (permanently\\ndeleted)."
    tags: "Replace history tags with the given list"
    history_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}