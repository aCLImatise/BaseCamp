class: CommandLineTool
id: fastspar_bootstrap.cwl
inputs:
- id: in_c_slash_otu_table
  doc: OTU input table
  type: File
  inputBinding:
    prefix: -c/--otu_table
- id: in_n_slash_number
  doc: Number of bootstrap samples to generate
  type: File
  inputBinding:
    prefix: -n/--number
- id: in_p_slash_prefix
  doc: Prefix out bootstrap output files
  type: string
  inputBinding:
    prefix: -p/--prefix
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_seed
  doc: 'Random number generator seed (default: 1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in__versiondisplay_version
  doc: "--version\nDisplay version information and exit\n"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_number
  doc: ''
  type: long
  inputBinding:
    prefix: --number
- id: in_otu_table
  doc: ''
  type: File
  inputBinding:
    prefix: --otu_table
- id: in_bootstraps
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
- fastspar_bootstrap
