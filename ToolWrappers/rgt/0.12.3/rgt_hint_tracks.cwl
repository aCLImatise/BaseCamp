class: CommandLineTool
id: rgt_hint_tracks.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19,\nhg38. mm9, and mm10. DEFAULT: hg19"
  type: Directory?
  inputBinding:
    prefix: --organism
- id: in_bias_table
  doc: ",FILE1_R\nBias table files used to generate bias corrected\ntracks. DEFAULT:\
    \ None"
  type: File?
  inputBinding:
    prefix: --bias-table
- id: in_raw
  doc: "If set, the raw signals from DNase-seq or ATAC-seq\ndata will be generated.\
    \ DEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_bc
  doc: "If set, the bias corrected signals from DNase-seq or\nATAC-seq data will be\
    \ generated. DEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --bc
- id: in_norm
  doc: "If set, the normalised signals from DNase-seq or ATAC-\nseq data will be generated.\
    \ DEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --norm
- id: in_bigwig
  doc: "If set, all .wig files will be converted to .bw files.\nDEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --bigWig
- id: in_strand_specific
  doc: "If set, the tracks will be splitted into two files,\none for forward and another\
    \ for reverse strand.\nDEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --strand-specific
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: "The prefix for results files. DEFAULT: tracks\n"
  type: string?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_location)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- tracks
