class: CommandLineTool
id: rgt_hint_footprinting.cwl
inputs:
- id: organism
  doc: 'Organism considered on the analysis. Must have been setup in the RGTDATA folder.
    Common choices are hg19, hg38. mm9, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --organism
- id: hmm_file
  doc: If the argument is not given, then a default HMM will be used.
  type: File
  inputBinding:
    prefix: --hmm-file
- id: bias_table
  doc: ',FILE_R List of files with all possible k-mers (for any k) and their bias
    estimates. Each line should contain a kmer and the bias estimate separated by
    tab.'
  type: File
  inputBinding:
    prefix: --bias-table
- id: paired_end
  doc: 'Set it if your ATAC-seq data is paired-end sequenced. Note that this option
    is only applied to ATAC-seq data. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: bias_correction
  doc: 'If set, footprint calling will based on bias corrected DNase-seq signal. This
    option is only applied to DNase-seq. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --bias-correction
- id: bias_type
  doc: "Type of protocol used to generate the DNase-seq. Available options are: 'SH'\
    \ (DNase-seq single-hit protocol), 'DH' (DNase-seq double-hit protocol). DEFAULT:\
    \ SH"
  type: string
  inputBinding:
    prefix: --bias-type
- id: output_location
  doc: 'Path where the output bias table files will be written. DEFAULT: current directory'
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: 'The prefix for results files. DEFAULT: footprints'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: atac_seq
  doc: 'If set, footprint calling will based on ATAC-seq model. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --atac-seq
- id: dnase_seq
  doc: 'If set, footprint calling will based on DNase-seq model. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --dnase-seq
- id: histone
  doc: 'If set, footprint calling will based on histone modification model. DEFAULT:
    False'
  type: boolean
  inputBinding:
    prefix: --histone
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- footprinting
