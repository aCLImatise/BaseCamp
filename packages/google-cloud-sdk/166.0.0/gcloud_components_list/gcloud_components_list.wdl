version 1.0

task GcloudComponentsList {
  input {
    Boolean? show_versions
    Boolean? filter
    Int? limit
    Boolean? sort_by
  }
  command <<<
    gcloud components list \
      ~{if (show_versions) then "--show-versions" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (sort_by) then "--sort-by" else ""}
  >>>
  parameter_meta {
    show_versions: "Show installed and available versions of all components."
    filter: "Apply a Boolean filter EXPRESSION to each resource item to be listed.\\nIf the expression evaluates True then that item is listed. For more\\ndetails and examples of filter expressions run $ gcloud topic filters.\\nThis flag interacts with other flags that are applied in this order:\\n--flatten, --sort-by, --filter, --limit."
    limit: "The maximum number of resources to list. The default is unlimited. This\\nflag interacts with other flags that are applied in this order:\\n--flatten, --sort-by, --filter, --limit."
    sort_by: "=[FIELD,...]\\nA comma-separated list of resource field key names to sort by. The\\ndefault order is ascending. Prefix a field with ``~'' for descending\\norder on that field. This flag interacts with other flags that are\\napplied in this order: --flatten, --sort-by, --filter, --limit."
  }
  output {
    File out_stdout = stdout()
  }
}