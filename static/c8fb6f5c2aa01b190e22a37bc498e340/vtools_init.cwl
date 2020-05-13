class: CommandLineTool
id: vtools_init.cwl
inputs:
- id: project
  doc: Name of a new project. This will create a new .proj file under the current
    directory. Only one project is allowed in a directory.
  type: string
  inputBinding:
    position: 0
- id: force
  doc: Remove a project if it already exists.
  type: boolean
  inputBinding:
    prefix: --force
- id: build
  doc: Set the build (hg18 or hg19) of the primary reference genome of the project.
  type: string
  inputBinding:
    prefix: --build
- id: store
  doc: Storage model used to storage variants and genotype. The default value is the
    value set by environmental variable STOREMODE or sqlite if the variable is not
    set.
  type: string
  inputBinding:
    prefix: --store
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: parent
  doc: Directory or snapshot file of a parent project (e.g. --parent ../main) from
    which all or part of variants (--variants), samples (--samples) and genotypes
    (--genotypes) will be copied to the newly created project.
  type: string
  inputBinding:
    prefix: --parent
- id: variants
  doc: '[TABLE]    A variant table of the parental project whose variants will be
    copied to the new project. Default to variant (all variants).'
  type: boolean
  inputBinding:
    prefix: --variants
- id: samples
  doc: '[COND [COND ...]] Copy only samples of the parental project that match specified
    conditions.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: genotypes
  doc: '[COND [COND ...]] Copy only genotypes that match specified conditions.'
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: children
  doc: A list of a subprojects (directories or snapshot files of projects) that will
    be merged to create this new project. The subprojects must have the same primary
    and alternative reference genome. Variant tables with the same names from multiple
    samples will be merged. Samples from the children projects will be copied even
    if they were identical samples imported from the same source files.
  type: string[]
  inputBinding:
    prefix: --children
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- init
