class: CommandLineTool
id: rnaclustAlignRange.pl.cwl
inputs:
- id: range
  doc: <i-j>                          specifies pairwise alignments which will be
    calculated (e.g. --range 1-100) (required)
  type: boolean
  inputBinding:
    prefix: --range
- id: tgt_dir
  doc: <dir>                          target directory (required)
  type: boolean
  inputBinding:
    prefix: --tgtdir
- id: dp_dir
  doc: <dir>                          Directory containing the dotplots (required)s
  type: boolean
  inputBinding:
    prefix: --dpdir
- id: cpu
  doc: '<n>                            Number of CPUs available on your machine. Calls
    to locarna will  be distributed equally between those CPUs. (default: 1)  (optional)'
  type: boolean
  inputBinding:
    prefix: --cpu
- id: loca_rna_opts
  doc: <"locarna options">          options passed directly to locarna (must be given
    as one string) (optional)
  type: boolean
  inputBinding:
    prefix: --locarna-opts
- id: loca_rna_path
  doc: 'path to locarna (default: ) (optional)'
  type: File
  inputBinding:
    prefix: --locarna-path
- id: man
  doc: full documentation (optional)
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaclustAlignRange.pl
