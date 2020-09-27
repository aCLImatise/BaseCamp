class: CommandLineTool
id: rgt_hint_footprinting.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19,\nhg38. mm9, and mm10. DEFAULT: hg19"
  type: Directory
  inputBinding:
    prefix: --organism
- id: in_hmm_file
  doc: "If the argument is not given, then a default HMM will\nbe used."
  type: File
  inputBinding:
    prefix: --hmm-file
- id: in_bias_table
  doc: ",FILE_R\nList of files with all possible k-mers (for any k) and\ntheir bias\
    \ estimates. Each line should contain a kmer\nand the bias estimate separated\
    \ by tab."
  type: File
  inputBinding:
    prefix: --bias-table
- id: in_paired_end
  doc: "Set it if your ATAC-seq data is paired-end sequenced.\nNote that this option\
    \ is only applied to ATAC-seq\ndata. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_bias_correction
  doc: "If set, footprint calling will based on bias corrected\nDNase-seq signal.\
    \ This option is only applied to\nDNase-seq. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --bias-correction
- id: in_bias_type
  doc: "Type of protocol used to generate the DNase-seq.\nAvailable options are: 'SH'\
    \ (DNase-seq single-hit\nprotocol), 'DH' (DNase-seq double-hit protocol).\nDEFAULT:\
    \ SH"
  type: string
  inputBinding:
    prefix: --bias-type
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: 'The prefix for results files. DEFAULT: footprints'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_atac_seq
  doc: "If set, footprint calling will based on ATAC-seq\nmodel. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --atac-seq
- id: in_dnase_seq
  doc: "If set, footprint calling will based on DNase-seq\nmodel. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --dnase-seq
- id: in_histone
  doc: "If set, footprint calling will based on histone\nmodification model. DEFAULT:\
    \ False\n"
  type: boolean
  inputBinding:
    prefix: --histone
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File
  outputBinding:
    glob: $(inputs.in_output_location)
cwlVersion: v1.1
baseCommand:
- rgt-hint
- footprinting
