class: CommandLineTool
id: rgt_hint_tracks.cwl
inputs:
- id: organism
  doc: 'Organism considered on the analysis. Must have been setup in the RGTDATA folder.
    Common choices are hg19, hg38. mm9, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --organism
- id: bias_table
  doc: ',FILE1_R Bias table files used to generate bias corrected tracks. DEFAULT:
    None'
  type: File
  inputBinding:
    prefix: --bias-table
- id: raw
  doc: 'If set, the raw signals from DNase-seq or ATAC-seq data will be generated.
    DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --raw
- id: bc
  doc: 'If set, the bias corrected signals from DNase-seq or ATAC-seq data will be
    generated. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --bc
- id: norm
  doc: 'If set, the normalised signals from DNase-seq or ATAC- seq data will be generated.
    DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --norm
- id: bigwig
  doc: 'If set, all .wig files will be converted to .bw files. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --bigWig
- id: strand_specific
  doc: 'If set, the tracks will be splitted into two files, one for forward and another
    for reverse strand. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: output_location
  doc: 'Path where the output bias table files will be written. DEFAULT: current directory'
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: 'The prefix for results files. DEFAULT: tracks'
  type: string
  inputBinding:
    prefix: --output-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- tracks
