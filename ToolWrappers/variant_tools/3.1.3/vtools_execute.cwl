class: CommandLineTool
id: vtools_execute.cwl
inputs:
- id: in_jobs
  doc: "Execute the pipeline in parallel model if a number\nother than 1 is specified.\
    \ In this mode, the\nRunCommand action will create a shell script and\nsubmit\
    \ the job using a command specified by option\n``submitter``, if this parameter\
    \ is defined."
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_delimiter
  doc: Delimiter used to output results of a SQL query.
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_spec_file
  doc: "Name of a pipeline configuration file, which can be a\npath to a .pipeline\
    \ file (with or without extension)\nor one of the online pipelines listed by command\n\
    \"vtools show pipelines\". For backward compatibility,\nif no input and output\
    \ files are specified (options\n--input and --output), values of this option is\n\
    treated as a SQL query that will be executed against\nthe project database, with\
    \ project genotype database\nattached as \"genotype\" and annotation databases\n\
    attached by their names."
  type: string
  inputBinding:
    position: 0
- id: in_pipelines
  doc: "Name of one or more pipelines defined in SPECFILE,\nwhich can be ignored if\
    \ the SPECFILE only defines one\npipeline. One or more steps can be specified\
    \ in the\nform of 'pipeline:5' (step_5 only), 'pipeline:-5' (up\nto step 5), 'pipeline:5-'\
    \ (from step 5),\n'pipeline:2,5' (step 2 and 5), 'pipeline:2-5' (step 2\nto 5).\
    \ This essentially adds an option \"skip\" to the\nunselected pipeline steps and\
    \ it is up to the user to\nensure that the pipeline is executable with only a\n\
    subset of steps. Please use command \"vtools show\npipeline SPECFILE\" for details\
    \ of available pipelines\nin SPECFILE, including pipeline-specific parameters\n\
    that could be used to change the default behavior of\nthe pipelines."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools
- execute
