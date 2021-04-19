version 1.0

task ParsecHistoriesGetHistories {
  input {
    String? history_id
    String? name
    Boolean? deleted
    String? published
    String? slug
    String arguments_dot
  }
  command <<<
    parsec histories get_histories \
      ~{arguments_dot} \
      ~{if defined(history_id) then ("--history_id " +  '"' + history_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (deleted) then "--deleted" else ""} \
      ~{if defined(published) then ("--published " +  '"' + published + '"') else ""} \
      ~{if defined(slug) then ("--slug " +  '"' + slug + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: "Encoded history ID to filter on"
    name: "Name of history to filter on"
    deleted: "whether to filter for the deleted histories (``True``) or\\nfor the non-deleted ones (``False``)"
    published: "whether to filter for the published histories (``True``)\\nor for the non-published ones (``False``). If not set, no\\nfiltering is applied. Note the filtering is only applied\\nto the user's own histories; to access all histories\\npublished by any user, use the\\n``get_published_histories`` method."
    slug: "History slug to filter on"
    arguments_dot: "Output:\\nList of history dicts."
  }
  output {
    File out_stdout = stdout()
  }
}