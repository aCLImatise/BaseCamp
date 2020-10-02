class: CommandLineTool
id: vtools_init.cwl
inputs:
- id: in_force
  doc: Remove a project if it already exists.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_build
  doc: "Set the build (hg18 or hg19) of the primary reference\ngenome of the project."
  type: long
  inputBinding:
    prefix: --build
- id: in_store
  doc: "Storage model used to storage variants and genotype.\nThe default value is\
    \ the value set by environmental\nvariable STOREMODE or sqlite if the variable\
    \ is not\nset."
  type: string
  inputBinding:
    prefix: --store
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_parent
  doc: "Directory or snapshot file of a parent project (e.g.\n--parent ../main) from\
    \ which all or part of variants\n(--variants), samples (--samples) and genotypes\n\
    (--genotypes) will be copied to the newly created\nproject."
  type: File
  inputBinding:
    prefix: --parent
- id: in_variants
  doc: "[TABLE]    A variant table of the parental project whose variants\nwill be\
    \ copied to the new project. Default to variant\n(all variants)."
  type: boolean
  inputBinding:
    prefix: --variants
- id: in_samples
  doc: "[COND [COND ...]]\nCopy only samples of the parental project that match\n\
    specified conditions."
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_genotypes
  doc: "[COND [COND ...]]\nCopy only genotypes that match specified conditions."
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: in_children
  doc: "A list of a subprojects (directories or snapshot files\nof projects) that\
    \ will be merged to create this new\nproject. The subprojects must have the same\
    \ primary\nand alternative reference genome. Variant tables with\nthe same names\
    \ from multiple samples will be merged.\nSamples from the children projects will\
    \ be copied even\nif they were identical samples imported from the same\nsource\
    \ files.\n"
  type: string[]
  inputBinding:
    prefix: --children
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- init
