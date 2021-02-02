class: CommandLineTool
id: vtools_simulate.cwl
inputs:
- id: in_seed
  doc: "Random seed for the simulation. A random seed will be\nused by default but\
    \ a specific seed could be used to\nreproduce a previously executed simulation."
  type: string
  inputBinding:
    prefix: --seed
- id: in_replicates
  doc: Number of consecutive replications to simulate
  type: long
  inputBinding:
    prefix: --replicates
- id: in_jobs
  doc: "Maximum number of concurrent jobs to execute, for\nsteps of a pipeline that\
    \ allows multi-processing."
  type: long
  inputBinding:
    prefix: --jobs
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_spec_file
  doc: "Name of a model specification file, which can be the\nname of an online specification\
    \ file, or path to a\nlocal .pipeline file. Please use command \"vtools show\n\
    simulations\" to get a list all available simulation\nmodels."
  type: string
  inputBinding:
    position: 0
- id: in_models
  doc: "Name of one or more simulation models defined in\nSPECFILE, which can be ignored\
    \ if the SPECFILE only\ndefines one simulation model. Please use command\n\"vtools\
    \ show simulation SPECFILE\" for details of\navailable models in SPECFILE, including\
    \ model-specific\nparameters that could be used to change the default\nbehavior\
    \ of these models."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- simulate
