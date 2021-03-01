class: CommandLineTool
id: rgt_hint_differential.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19,\nhg38. mm9, and mm10. DEFAULT: hg19"
  type: Directory?
  inputBinding:
    prefix: --organism
- id: in_m_pbs_files
  doc: ",FILE2...\nPredicted motif binding sites for each condition.Files\nshould\
    \ be separated with comma."
  type: File?
  inputBinding:
    prefix: --mpbs-files
- id: in_reads_files
  doc: ",FILE2...\nReads for each condition. Files should be separated\nwith comma."
  type: File?
  inputBinding:
    prefix: --reads-files
- id: in_conditions
  doc: "Name for each condition. DEFAULT:\ncondition1,condition2, ..."
  type: long?
  inputBinding:
    prefix: --conditions
- id: in_colors
  doc: 'Set color in line plot. DEFAULT: None, ...'
  type: string?
  inputBinding:
    prefix: --colors
- id: in_window_size
  doc: 'The window size for differential analysis. DEFAULT:'
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_bc
  doc: "If set, all analysis will be based on bias corrected\nsignal. DEFAULT: False"
  type: boolean?
  inputBinding:
    prefix: --bc
- id: in_nc
  doc: 'The number of cores. DEFAULT: 1'
  type: long?
  inputBinding:
    prefix: --nc
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten. DEFAULT: current\
    \ directory"
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: 'The prefix for results files. DEFAULT: differential'
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_standardize
  doc: If set, the signal will be rescaled to (0, 1) for
  type: boolean?
  inputBinding:
    prefix: --standardize
- id: in__fdr_float
  doc: '--fdr FLOAT           The false discovery rate. DEFAULT: 0.05'
  type: long
  inputBinding:
    position: 0
- id: in_plotting_dot
  doc: --output-profiles     If set, the footprint profiles will be writen into a
  type: string
  inputBinding:
    position: 1
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
- differential
