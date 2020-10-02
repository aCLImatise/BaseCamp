class: CommandLineTool
id: motifscan_motif.cwl
inputs:
- id: in_verbose
  doc: Enable verbose log messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_list
  doc: Display installed motif sets.
  type: boolean
  inputBinding:
    prefix: --list
- id: in_list_remote
  doc: Display available remote motif sets.
  type: boolean
  inputBinding:
    prefix: --list-remote
- id: in_install
  doc: Install a new motif set with PFMs.
  type: boolean
  inputBinding:
    prefix: --install
- id: in_build
  doc: Build an installed motif set for additional genome
  type: string
  inputBinding:
    prefix: --build
- id: in_name
  doc: Name of the motif set (PFMs) to be installed.
  type: string
  inputBinding:
    prefix: --name
- id: in_local_motif_pfms
  doc: Local motif PFMs file(s) to be installed.
  type: File[]
  inputBinding:
    prefix: -i
- id: in_remote
  doc: Download a remote motif PFMs set.
  type: string
  inputBinding:
    prefix: --remote
- id: in_output_dir
  doc: "Write to a given directory instead of the default\ndirectory."
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_database
  doc: "Which remote database is used to list/install motif\nset (PFMs). Default:\
    \ jaspar_core"
  type: string
  inputBinding:
    prefix: --database
- id: in_genome
  doc: Genome assembly to build the motif set (PFMs) for.
  type: string
  inputBinding:
    prefix: --genome
- id: in_n_random
  doc: "Generate N random background sequences to calculate\nmotif score cutoffs.\
    \ Default: 1,000,000"
  type: long
  inputBinding:
    prefix: --n-random
- id: in_seed
  doc: Random seed used to generate background sequences.
  type: string
  inputBinding:
    prefix: --seed
- id: in_assembly_dot
  doc: --uninstall NAME      Uninstall a motif set.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- motifscan
- motif
