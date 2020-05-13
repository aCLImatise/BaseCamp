class: CommandLineTool
id: pyomo_convert.cwl
inputs:
- id: model_or_config_file
  doc: A Python module that defines a Pyomo model, or a configuration file that defines
    options for 'pyomo convert' (in either YAML or JSON format)
  type: string
  inputBinding:
    position: 0
- id: data_files
  doc: Pyomo data files that defined data used to initialize the model (specified
    in the first argument)
  type: string
  inputBinding:
    position: 1
- id: generate_config_template
  doc: Create a configuration template file in YAML or JSON and exit.
  type: string
  inputBinding:
    prefix: --generate-config-template
- id: output
  doc: Output file name. This option is required unless the file name is specified
    in a configuration file.
  type: File
  inputBinding:
    prefix: --output
- id: format
  doc: Output format
  type: string
  inputBinding:
    prefix: --format
- id: namespace
  doc: A namespace that is used to select data in Pyomo data files.
  type: string
  inputBinding:
    prefix: --namespace
- id: model_name
  doc: The name of the model object that is created in the specified Pyomo module
  type: string
  inputBinding:
    prefix: --model-name
- id: symbolic_solver_labels
  doc: When interfacing with the solver, use symbol names derived from the model.
    For example, "my_special_variable[1_2_3]" instead of "v1". Useful for debugging.
    When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints)
    and .col (variables) files. The ordering in these files provides a mapping from
    ASL index to symbolic model names.
  type: boolean
  inputBinding:
    prefix: --symbolic-solver-labels
- id: file_determinism
  doc: When interfacing with a solver using file based I/O, set the effort level for
    ensuring the file creation process is determistic. The default (1) sorts the index
    of components when transforming the model. Anything less than 1 disables index
    sorting. Anything greater than 1 additionaly sorts by component name to override
    declartion order.
  type: File
  inputBinding:
    prefix: --file-determinism
- id: transform
  doc: List of model transformations
  type: string
  inputBinding:
    prefix: --transform
- id: preprocess
  doc: Specify a Python module that gets immediately executed (before the optimization
    model is setup).
  type: string
  inputBinding:
    prefix: --preprocess
- id: logging
  doc: 'Logging level: quiet, warning, info, verbose, debug'
  type: string
  inputBinding:
    prefix: --logging
- id: log_file
  doc: Redirect output to the specified file.
  type: string
  inputBinding:
    prefix: --logfile
- id: catch_errors
  doc: Trigger failures for exceptions to print the program stack.
  type: boolean
  inputBinding:
    prefix: --catch-errors
- id: disable_gc
  doc: Disable the garbage collecter.
  type: boolean
  inputBinding:
    prefix: --disable-gc
- id: keep_files
  doc: Keep temporary files
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: path
  doc: Give a path that is used to find the Pyomo python files.
  type: File
  inputBinding:
    prefix: --path
- id: profile_count
  doc: Enable profiling of Python code. The value of this option is the number of
    functions that are summarized.
  type: string
  inputBinding:
    prefix: --profile-count
- id: report_timing
  doc: Report various timing statistics during model construction.
  type: boolean
  inputBinding:
    prefix: --report-timing
- id: tempdir
  doc: Specify the directory where temporary files are generated.
  type: string
  inputBinding:
    prefix: --tempdir
- id: apply
  doc: operations (e.g. import Python packages)
  type: string
  inputBinding:
    prefix: '- Apply'
- id: create
  doc: model
  type: string
  inputBinding:
    prefix: '- Create'
- id: apply
  doc: transformations
  type: string
  inputBinding:
    prefix: '- Apply'
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- convert
