class: CommandLineTool
id: cpinsim_simulate.cwl
inputs:
- id: in_concentrations
  doc: "PATH/TO/CONCENTRATIONS, -c MAX-PROTEIN-INSTANCES PATH/TO/CONCENTRATIONS\n\
    Maximum number of protein instances and path to a csv-\nfile containing a concentration\
    \ for each protein."
  type: long
  inputBinding:
    prefix: --concentrations
- id: in_number_of_copies
  doc: Number of copies for each protein type.
  type: long
  inputBinding:
    prefix: --number-of-copies
- id: in_association_probability
  doc: "The probability for a new association between two\nproteins (default: 0.005)."
  type: double
  inputBinding:
    prefix: --association-probability
- id: in_dissociation_probability
  doc: "The probability for a dissociation of a pairwise\ninteraction (default: 0.0125)."
  type: double
  inputBinding:
    prefix: --dissociation-probability
- id: in_max_steps
  doc: "Maximum number of simulation steps if convergence is\nnot reached until then\
    \ (default: 1000)."
  type: long
  inputBinding:
    prefix: --max-steps
- id: in_perturbation
  doc: "FACTOR, -p PROTEIN FACTOR\nProtein that should be overexpressed or down regulated\n\
    by factor FACTOR for perturbation analysis."
  type: string
  inputBinding:
    prefix: --perturbation
- id: in_output_graph
  doc: "Pickle the complete graph at the end of simulation\n(after last dissociation\
    \ step) and write it to the\ngiven path."
  type: File
  inputBinding:
    prefix: --output-graph
- id: in_output_log
  doc: "Write some log information of each simulation stept to\nthe given path. If\
    \ not specified, std-out is used.\n"
  type: File
  inputBinding:
    prefix: --output-log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_log
  doc: "Write some log information of each simulation stept to\nthe given path. If\
    \ not specified, std-out is used.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_log)
cwlVersion: v1.1
baseCommand:
- cpinsim
- simulate
