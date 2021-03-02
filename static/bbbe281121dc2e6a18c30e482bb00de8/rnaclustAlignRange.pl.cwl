class: CommandLineTool
id: rnaclustAlignRange.pl.cwl
inputs:
- id: in_range
  doc: "<i-j>                          specifies pairwise alignments which will be\
    \ calculated (e.g. --range 1-100)\n(required)"
  type: boolean?
  inputBinding:
    prefix: --range
- id: in_tgt_dir
  doc: "<dir>                          target directory\n(required)"
  type: boolean?
  inputBinding:
    prefix: --tgtdir
- id: in_dp_dir
  doc: "<dir>                          Directory containing the dotplots\n(required)s"
  type: boolean?
  inputBinding:
    prefix: --dpdir
- id: in_cpu
  doc: "<n>                            Number of CPUs available on your machine. Calls\
    \ to locarna will\nbe distributed equally between those CPUs. (default: 1)\n(optional)"
  type: boolean?
  inputBinding:
    prefix: --cpu
- id: in_loca_rna_opts
  doc: "<\"locarna options\">          options passed directly to locarna (must be\
    \ given as one string)\n(optional)"
  type: boolean?
  inputBinding:
    prefix: --locarna-opts
- id: in_loca_rna_path
  doc: "path to locarna (default: )\n(optional)"
  type: File?
  inputBinding:
    prefix: --locarna-path
- id: in_man
  doc: "full documentation\n(optional)\n"
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_i_j
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specifies
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pairwise
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_alignments
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_which
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_calculated
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnaclustAlignRange.pl
