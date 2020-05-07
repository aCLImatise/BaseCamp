class: CommandLineTool
id: vtools_simulate.cwl
inputs:
- id: spec_file
  doc: Name of a model specification file, which can be the name of an online specification
    file, or path to a local .pipeline file. Please use command "vtools show simulations"
    to get a list all available simulation models.
  type: string
  inputBinding:
    position: 0
- id: models
  doc: Name of one or more simulation models defined in SPECFILE, which can be ignored
    if the SPECFILE only defines one simulation model. Please use command "vtools
    show simulation SPECFILE" for details of available models in SPECFILE, including
    model-specific parameters that could be used to change the default behavior of
    these models.
  type: string
  inputBinding:
    position: 1
- id: seed
  doc: Random seed for the simulation. A random seed will be used by default but a
    specific seed could be used to reproduce a previously executed simulation.
  type: string
  inputBinding:
    prefix: --seed
- id: replicates
  doc: Number of consecutive replications to simulate
  type: string
  inputBinding:
    prefix: --replicates
- id: jobs
  doc: Maximum number of concurrent jobs to execute, for steps of a pipeline that
    allows multi-processing.
  type: string
  inputBinding:
    prefix: --jobs
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
- simulate
