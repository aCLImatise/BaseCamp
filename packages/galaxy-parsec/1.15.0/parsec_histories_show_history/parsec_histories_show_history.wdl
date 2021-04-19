version 1.0

task ParsecHistoriesShowHistory {
  input {
    Boolean? contents
    String? deleted
    String? visible
    String? details
    String? types
    String information_dot
  }
  command <<<
    parsec histories show_history \
      ~{information_dot} \
      ~{if (contents) then "--contents" else ""} \
      ~{if defined(deleted) then ("--deleted " +  '"' + deleted + '"') else ""} \
      ~{if defined(visible) then ("--visible " +  '"' + visible + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    contents: "When ``True``, instead of the history details, return a list\\nwith info for all datasets in the given history. Note that\\ninside each dataset info dict, the id which should be used\\nfor further requests about this history dataset is given by\\nthe value of the `id` (not `dataset_id`) key."
    deleted: "When ``contents=True``, whether to filter for the deleted\\ndatasets (``True``) or for the non-deleted ones (``False``).\\nIf not set, no filtering is applied."
    visible: "When ``contents=True``, whether to filter for the visible\\ndatasets (``True``) or for the hidden ones (``False``). If\\nnot set, no filtering is applied."
    details: "When ``contents=True``, include dataset details. Set to\\n'all' for the most information."
    types: "When ``contents=True``, filter for history content types. If\\nset to ``['dataset']``, return only datasets. If set to\\n``['dataset_collection']``, return only dataset collections.\\nIf not set, no filtering is applied."
    information_dot: "Output:\\ndetails of the given history or list of dataset info"
  }
  output {
    File out_stdout = stdout()
  }
}