class: CommandLineTool
id: ../../../motus_snv_call.cwl
inputs:
- id: dir_call_metasnv
  doc: DIR     Call metaSNV on all bam files in the directory. [Mandatory]
  type: boolean
  inputBinding:
    prefix: -d
- id: fb
  doc: 'Coverage breadth: minimal horizontal genome coverage percentage per sample
    per species. Default=80.0'
  type: double
  inputBinding:
    prefix: -fb
- id: fd
  doc: 'Coverage depth: minimal average vertical genome coverage per sample per species.
    Default=5.0'
  type: double
  inputBinding:
    prefix: -fd
- id: fm
  doc: Minimum number of samples per species. Default=2
  type: long
  inputBinding:
    prefix: -fm
- id: fp
  doc: 'FILTERING STEP II: Required proportion of informative samples (coverage non-zero)
    per position. Default=0.50'
  type: double
  inputBinding:
    prefix: -fp
- id: fc
  doc: 'FILTERING STEP II: Minimum coverage per position per sample per species. Default=5.0'
  type: double
  inputBinding:
    prefix: -fc
- id: int_number_threads
  doc: INT     Number of threads. Default=1
  type: boolean
  inputBinding:
    prefix: -t
- id: db
  doc: Provide a database directory
  type: string
  inputBinding:
    prefix: -db
- id: dir_output_directory
  doc: DIR     Output directory. Will fail if already exists. [Mandatory]
  type: boolean
  inputBinding:
    prefix: -o
- id: keep_directories_produced
  doc: Keep all the directories produced by metaSNV. Default is to remove cov, distances,
    filtered, snpCaller
  type: boolean
  inputBinding:
    prefix: -K
- id: verbose_level_error
  doc: 'Verbose level: 1=error, 2=warning, 3=message, 4+=debugging. Default=3'
  type: long
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
- snv_call
