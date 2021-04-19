version 1.0

task ParsecHistoriesGetPublishedHistories {
  input {
    String? name
    Boolean? deleted
    String? slug
  }
  command <<<
    parsec histories get_published_histories \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (deleted) then "--deleted" else ""} \
      ~{if defined(slug) then ("--slug " +  '"' + slug + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    name: "Name of history to filter on"
    deleted: "whether to filter for the deleted histories (``True``) or for\\nthe non-deleted ones (``False``)"
    slug: "History slug to filter on"
  }
  output {
    File out_stdout = stdout()
  }
}