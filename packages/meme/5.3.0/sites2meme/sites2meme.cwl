class: CommandLineTool
id: sites2meme.cwl
inputs:
- id: in_ext
  doc: "the file extension (with '.') of the sites files;\nthe file name minus the\
    \ extension will be\nused as the motif identifer;\ndefault: expect an extension\
    \ of \".txt\""
  type: File?
  inputBinding:
    prefix: -ext
- id: in_map
  doc: tab separated file containing id, name pairs.
  type: File?
  inputBinding:
    prefix: -map
- id: in_protein
  doc: "Sets the expected alphabet to protein;\ndefault: the expected alphabet is\
    \ DNA"
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_alph
  doc: "Set the expected alphabet to the defintion\nin the file; default: DNA"
  type: File?
  inputBinding:
    prefix: -alph
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: use uniform background"
  type: File?
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The motif id is\nsubstituted for MOTIF_NAME"
  type: string?
  inputBinding:
    prefix: -url
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- sites2meme
