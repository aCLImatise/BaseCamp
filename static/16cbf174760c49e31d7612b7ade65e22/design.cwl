class: CommandLineTool
id: design.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used. The\n\
    default is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_preselect
  doc: "Specify that use pre-selected sequence segments should be used. The default\n\
    is that all nucleotides are chosen at random."
  type: boolean
  inputBinding:
    prefix: --preselect
- id: in_timer
  doc: "Use a timer to measure the duration of the design process and print the\n\
    elapsed time to standard output."
  type: boolean
  inputBinding:
    prefix: --timer
- id: in_alphabet
  doc: "Specify the name of a folding alphabet and associated nearest neighbor\nparameters.\
    \ The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. \"rna\"\
    \ for RNA parameters or \"dna\" for DNA parameters or a\ncustom extended/modified\
    \ alphabet. The thermodynamic parameters need to\nreside in the at the location\
    \ indicated by environment variable DATAPATH.\nThe default is \"rna\" (i.e. use\
    \ RNA parameters). This option overrides the\n--DNA flag."
  type: boolean
  inputBinding:
    prefix: --alphabet
- id: in_error
  doc: The maximum allowed ensemble defect per nucleotide.
  type: boolean
  inputBinding:
    prefix: --error
- id: in_maxdepth
  doc: "Max-depth: The maximum extent to which the structure will be sub-divided in\n\
    the binary decomposition. The default is 5."
  type: boolean
  inputBinding:
    prefix: --maxdepth
- id: in_max_leaf
  doc: "The maximum number of times a leaf can be re-optimized at random. The\ndefault\
    \ is 3."
  type: boolean
  inputBinding:
    prefix: --maxleaf
- id: in_max_mutate
  doc: "The maximum number of times a nucleotide will be mutated during\ndefect-weighted\
    \ reoptimization. The default is 4."
  type: boolean
  inputBinding:
    prefix: --maxmutate
- id: in_max_redesign
  doc: The maximum number of redesigns per parent node. The default is 10.
  type: boolean
  inputBinding:
    prefix: --maxredesign
- id: in_output
  doc: "Specify the output file. By default the resulting designed sequence is\nwritten\
    \ to standard output only. This flag instructs the program to output\nthe structure\
    \ (in ct format) to the specified file."
  type: File
  inputBinding:
    prefix: --output
- id: in_seed
  doc: "Specify a random seed. This is required to get exactly reproducible\nresults.\
    \ (The default is to use a seed based on the current system time).\n"
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_ct_structure_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify the output file. By default the resulting designed sequence is\nwritten\
    \ to standard output only. This flag instructs the program to output\nthe structure\
    \ (in ct format) to the specified file."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- design
