class: CommandLineTool
id: vtools_execute.cwl
inputs:
- id: spec_file
  doc: Name of a pipeline configuration file, which can be a path to a .pipeline file
    (with or without extension) or one of the online pipelines listed by command "vtools
    show pipelines". For backward compatibility, if no input and output files are
    specified (options --input and --output), values of this option is treated as
    a SQL query that will be executed against the project database, with project genotype
    database attached as "genotype" and annotation databases attached by their names.
  type: string
  inputBinding:
    position: 0
- id: pipelines
  doc: Name of one or more pipelines defined in SPECFILE, which can be ignored if
    the SPECFILE only defines one pipeline. One or more steps can be specified in
    the form of 'pipeline:5' (step_5 only), 'pipeline:-5' (up to step 5), 'pipeline:5-'
    (from step 5), 'pipeline:2,5' (step 2 and 5), 'pipeline:2-5' (step 2 to 5). This
    essentially adds an option "skip" to the unselected pipeline steps and it is up
    to the user to ensure that the pipeline is executable with only a subset of steps.
    Please use command "vtools show pipeline SPECFILE" for details of available pipelines
    in SPECFILE, including pipeline-specific parameters that could be used to change
    the default behavior of the pipelines.
  type: string
  inputBinding:
    position: 1
- id: jobs
  doc: Execute the pipeline in parallel model if a number other than 1 is specified.
    In this mode, the RunCommand action will create a shell script and submit the
    job using a command specified by option ``submitter``, if this parameter is defined.
  type: string
  inputBinding:
    prefix: --jobs
- id: delimiter
  doc: Delimiter used to output results of a SQL query.
  type: string
  inputBinding:
    prefix: --delimiter
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- execute
