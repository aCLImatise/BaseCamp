class: CommandLineTool
id: motus_snv_call.cwl
inputs:
- id: in_dir_call_metasnv
  doc: DIR     Call metaSNV on all bam files in the directory. [Mandatory]
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_fb
  doc: 'Coverage breadth: minimal horizontal genome coverage percentage per sample
    per species. Default=80.0'
  type: double?
  inputBinding:
    prefix: -fb
- id: in_fd
  doc: 'Coverage depth: minimal average vertical genome coverage per sample per species.
    Default=5.0'
  type: double?
  inputBinding:
    prefix: -fd
- id: in_fm
  doc: Minimum number of samples per species. Default=2
  type: long?
  inputBinding:
    prefix: -fm
- id: in_fp
  doc: 'FILTERING STEP II: Required proportion of informative samples (coverage non-zero)
    per position. Default=0.50'
  type: double?
  inputBinding:
    prefix: -fp
- id: in_fc
  doc: 'FILTERING STEP II: Minimum coverage per position per sample per species. Default=5.0'
  type: double?
  inputBinding:
    prefix: -fc
- id: in_int_number_default
  doc: INT     Number of threads. Default=1
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_dir_output_directory
  doc: DIR     Output directory. Will fail if already exists. [Mandatory]
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_keep_directories_produced
  doc: Keep all the directories produced by metaSNV. Default is to remove cov, distances,
    filtered, snpCaller
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_verbose_level_error
  doc: 'Verbose level: 1=error, 2=warning, 3=message, 4+=debugging. Default=3'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir_output_directory
  doc: DIR     Output directory. Will fail if already exists. [Mandatory]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- motus
- snv_call
