version 1.0

task ParsecWorkflowsRunWorkflow {
  input {
    Int? dataset_map
    String? params
    String? history_id
    String? history_name
    Boolean? import_inputs_to_history
    String? replacement_params
    String step_dot
  }
  command <<<
    parsec workflows run_workflow \
      ~{step_dot} \
      ~{if defined(dataset_map) then ("--dataset_map " +  '"' + dataset_map + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if defined(history_id) then ("--history_id " +  '"' + history_id + '"') else ""} \
      ~{if defined(history_name) then ("--history_name " +  '"' + history_name + '"') else ""} \
      ~{if (import_inputs_to_history) then "--import_inputs_to_history" else ""} \
      ~{if defined(replacement_params) then ("--replacement_params " +  '"' + replacement_params + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    dataset_map: "A mapping of workflow inputs to datasets. The\\ndatasets source can be a\\nLibraryDatasetDatasetAssociation (``ldda``),\\nLibraryDataset (``ld``), or\\nHistoryDatasetAssociation (``hda``). The map\\nmust be in the following format: ``{'<input>':\\n{'id': <encoded dataset ID>, 'src': '[ldda, ld,\\nhda]'}}`` (e.g. ``{'23': {'id':\\n'29beef4fadeed09f', 'src': 'ld'}}``)"
    params: "A mapping of non-datasets tool parameters (see\\nbelow)"
    history_id: "The encoded history ID where to store the\\nworkflow output. Alternatively, ``history_name``\\nmay be specified to create a new history."
    history_name: "Create a new history with the given name to\\nstore the workflow output. If both\\n``history_id`` and ``history_name`` are\\nprovided, ``history_name`` is ignored. If\\nneither is specified, a new 'Unnamed history' is\\ncreated."
    import_inputs_to_history: "If ``True``, used workflow inputs will be\\nimported into the history. If ``False``, only\\nworkflow outputs will be visible in the given\\nhistory."
    replacement_params: "pattern-based replacements for post-job actions\\n(see below)"
    step_dot: "The ``replacement_params`` dict should map parameter names in"
  }
  output {
    File out_stdout = stdout()
  }
}