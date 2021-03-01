class: CommandLineTool
id: rgt_hint_estimation.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19,\nhg38. mm9, and mm10. DEFAULT: hg19"
  type: Directory?
  inputBinding:
    prefix: --organism
- id: in_bias_type
  doc: "The methods that used to estimate the bias table\nAvailable options are: 'KMER',\
    \ 'PWM' and 'VOM'.\nDEFAULT: VOM"
  type: string?
  inputBinding:
    prefix: --bias-type
- id: in_reads_file
  doc: 'The BAM file containing aligned reads. DEFAULT: None'
  type: File?
  inputBinding:
    prefix: --reads-file
- id: in_regions_file
  doc: "The BED file containing regions to estimate the bias.\nDEFAULT: None"
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_downstream_ext
  doc: 'Size of k-mer for bias estimation. DEFAULT: 8'
  type: long?
  inputBinding:
    prefix: --downstream-ext
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: "The prefix for results files. DEFAULT: Bias\n"
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
- estimation
