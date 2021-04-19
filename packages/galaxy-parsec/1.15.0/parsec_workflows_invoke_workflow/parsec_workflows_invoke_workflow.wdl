version 1.0

task ParsecWorkflowsInvokeWorkflow {
  input {
    String? inputs
    String? params
    String? history_id
    String? history_name
    Boolean? import_inputs_to_history
    String? replacement_params
    Boolean? allow_tool_state_corrections
    String? inputs_by
    String invocation_dot
  }
  command <<<
    parsec workflows invoke_workflow \
      ~{invocation_dot} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if defined(history_id) then ("--history_id " +  '"' + history_id + '"') else ""} \
      ~{if defined(history_name) then ("--history_name " +  '"' + history_name + '"') else ""} \
      ~{if (import_inputs_to_history) then "--import_inputs_to_history" else ""} \
      ~{if defined(replacement_params) then ("--replacement_params " +  '"' + replacement_params + '"') else ""} \
      ~{if (allow_tool_state_corrections) then "--allow_tool_state_corrections" else ""} \
      ~{if defined(inputs_by) then ("--inputs_by " +  '"' + inputs_by + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    inputs: "A mapping of workflow inputs to datasets and\\ndataset collections. The datasets source can\\nbe a LibraryDatasetDatasetAssociation\\n(``ldda``), LibraryDataset (``ld``),\\nHistoryDatasetAssociation (``hda``), or\\nHistoryDatasetCollectionAssociation\\n(``hdca``)."
    params: "A mapping of non-datasets tool parameters\\n(see below)"
    history_id: "The encoded history ID where to store the\\nworkflow output. Alternatively,\\n``history_name`` may be specified to create\\na new history."
    history_name: "Create a new history with the given name to\\nstore the workflow output. If both\\n``history_id`` and ``history_name`` are\\nprovided, ``history_name`` is ignored. If\\nneither is specified, a new 'Unnamed\\nhistory' is created."
    import_inputs_to_history: "If ``True``, used workflow inputs will be\\nimported into the history. If ``False``,\\nonly workflow outputs will be visible in the\\ngiven history."
    replacement_params: "pattern-based replacements for post-job\\nactions (see below)"
    allow_tool_state_corrections: "If True, allow Galaxy to fill in missing\\ntool state when running workflows. This may\\nbe useful for workflows using tools that\\nhave changed over time or for workflows\\nbuilt outside of Galaxy with only a subset\\nof inputs defined."
    inputs_by: "Determines how inputs are referenced. Can be\\n\\\"step_index|step_uuid\\\" (default),\\n\\\"step_index\\\", \\\"step_id\\\", \\\"step_uuid\\\", or\\n\\\"name\\\"."
    invocation_dot: "Output:\\nA dict containing the workflow invocation describing the\\nscheduling of the workflow. For example::\\n{'history_id': '2f94e8ae9edff68a',              'id':\\n'df7a1f0c02a5b08e',              'inputs': {'0': {'id':\\n'a7db2fac67043c7e',                               'src':\\n'hda',                               'uuid':\\n'7932ffe0-2340-4952-8857-dbaa50f1f46a'}},\\n'model_class': 'WorkflowInvocation',              'state':\\n'ready',              'steps': [{'action': None,\\n'id': 'd413a19dec13d11e',                         'job_id':\\nNone,                         'model_class':\\n'WorkflowInvocationStep',\\n'order_index': 0,                         'state': None,\\n'update_time': '2015-10-31T22:00:26',\\n'workflow_step_id': 'cbbbf59e8f08c98c',\\n'workflow_step_label': None,\\n'workflow_step_uuid': 'b81250fd-3278-4e6a-b269-56a1f01ef485'},\\n{'action': None,                         'id':\\n'2f94e8ae9edff68a',                         'job_id':\\n'e89067bb68bee7a0',                         'model_class':\\n'WorkflowInvocationStep',\\n'order_index': 1,                         'state': 'new',\\n'update_time': '2015-10-31T22:00:26',\\n'workflow_step_id': '964b37715ec9bd22',\\n'workflow_step_label': None,\\n'workflow_step_uuid':\\n'e62440b8-e911-408b-b124-e05435d3125e'}],\\n'update_time': '2015-10-31T22:00:26',              'uuid':\\n'c8aa2b1c-801a-11e5-a9e5-8ca98228593c',\\n'workflow_id': '03501d7626bd192f'}\\nThe ``params`` dict should be specified as follows::\\n{STEP_ID: PARAM_DICT, ...}\\nwhere PARAM_DICT is::\\n{PARAM_NAME: VALUE, ...}\\nFor backwards compatibility, the following (deprecated) format is\\nalso supported for ``params``::\\n{TOOL_ID: PARAM_DICT, ...}\\nin which case PARAM_DICT affects all steps with the given tool id.\\nIf both by-tool-id and by-step-id specifications are used, the\\nlatter takes precedence.\\nFinally (again, for backwards compatibility), PARAM_DICT can also\\nbe specified as::\\n{'param': PARAM_NAME, 'value': VALUE}\\nNote that this format allows only one parameter to be set per\\nstep.\\nFor a ``repeat`` parameter, the names of the contained parameters\\nneeds         to be specified as ``<repeat name>_<repeat\\nindex>|<param name>``, with         the repeat index starting at\\n0. For example, if the tool XML contains::\\n<repeat name=\\\"cutoff\\\" title=\\\"Parameters used to filter cells\\\"\\nmin=\\\"1\\\">               <param name=\\\"name\\\" type=\\\"text\\\"\\nvalue=\\\"n_genes\\\" label=\\\"Name of param...\\\">\\n<option value=\\\"n_genes\\\">n_genes</option>\\n<option value=\\\"n_counts\\\">n_counts</option>\\n</param>               <param name=\\\"min\\\" type=\\\"float\\\" min=\\\"0\\\"\\nvalue=\\\"0\\\" label=\\\"Min value\\\"/>           </repeat>\\nthen the PARAM_DICT should be something like::\\n{...            \\\"cutoff_0|name\\\": \\\"n_genes\\\",\\n\\\"cutoff_0|min\\\": \\\"2\\\",            \\\"cutoff_1|name\\\": \\\"n_counts\\\",\\n\\\"cutoff_1|min\\\": \\\"4\\\",            ...}\\nAt the time of this writing, it is not possible to change the\\nnumber of         times the contained parameters are repeated.\\nTherefore, the parameter         indexes can go from 0 to n-1,\\nwhere n is the number of times the         repeated element was\\nadded when the workflow was saved in the Galaxy UI.\\nThe ``replacement_params`` dict should map parameter names in\\npost-job actions (PJAs) to their runtime values. For\\ninstance, if the final step has a PJA like the following::\\n{'RenameDatasetActionout_file1': {'action_arguments':\\n{'newname': '${output}'},\\n'action_type': 'RenameDatasetAction',\\n'output_name': 'out_file1'}}\\nthen the following renames the output dataset to 'foo'::\\nreplacement_params = {'output': 'foo'}\\nsee also `this email thread\\n<http://lists.bx.psu.edu/pipermail/galaxy-\\ndev/2011-September/006875.html>`_.\\n.. warning::           Historically, the ``run_workflow`` method\\nconsumed a ``dataset_map``           data structure that was\\nindexed by unencoded workflow step IDs. These           IDs would\\nnot be stable across Galaxy instances. The new ``inputs``\\nproperty is instead indexed by either the ``order_index`` property\\n(which is stable across workflow imports) or the step UUID which\\nis           also stable."
  }
  output {
    File out_stdout = stdout()
  }
}