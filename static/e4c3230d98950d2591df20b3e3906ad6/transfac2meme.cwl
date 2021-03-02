class: CommandLineTool
id: transfac2meme.cwl
inputs:
- id: in_rna
  doc: output an RNA database instead of a DNA database.
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_numbers
  doc: use numbers instead of strings as motif names
  type: boolean?
  inputBinding:
    prefix: -numbers
- id: in_use_acc
  doc: use accession names ("AC") instead of IDs
  type: boolean?
  inputBinding:
    prefix: -use_acc
- id: in_use_name
  doc: use names ("NA") instead of IDs
  type: boolean?
  inputBinding:
    prefix: -use_name
- id: in_ids
  doc: keep any motifs listed in the file
  type: File?
  inputBinding:
    prefix: -ids
- id: in_species
  doc: keep only motifs for this species
  type: string?
  inputBinding:
    prefix: -species
- id: in_skip
  doc: skip this ID (may be repeated)
  type: string?
  inputBinding:
    prefix: -skip
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
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
  doc: "website for the motif; The ID (or accession) is\nsubstituted for MOTIF_NAME,\
    \ the accession\nis substituted for MOTIF_AC and the\nmotif ID is substituted\
    \ for MOTIF_ID; default: no url"
  type: string?
  inputBinding:
    prefix: -url
- id: in_matrix_file
  doc: ''
  type: File
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
- transfac2meme
