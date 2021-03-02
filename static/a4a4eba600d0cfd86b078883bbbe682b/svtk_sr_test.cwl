class: CommandLineTool
id: svtk_sr_test.cwl
inputs:
- id: in_window
  doc: "Window around variant start/end to consider for split\nread support. [100]"
  type: long?
  inputBinding:
    prefix: --window
- id: in_background
  doc: "Number of background samples to choose for comparison\nin t-test. [160]"
  type: long?
  inputBinding:
    prefix: --background
- id: in_samples
  doc: Whitelist of samples to restrict testing to.
  type: string?
  inputBinding:
    prefix: --samples
- id: in_index
  doc: "Tabix index of discordant pair file. Required if\ndiscordant pair file is\
    \ hosted remotely."
  type: File?
  inputBinding:
    prefix: --index
- id: in_median_file
  doc: "Median coverage statistics for each library\n(optional). If provided, each\
    \ sample's split counts\nwill be normalized accordingly. Same format as RdTest,\n\
    one column per sample."
  type: File?
  inputBinding:
    prefix: --medianfile
- id: in_log
  doc: Print progress log to stderr.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_vcf
  doc: "VCF of variant calls. Standardized to include CHR2,\nEND, SVTYPE, STRANDS\
    \ in INFO."
  type: string
  inputBinding:
    position: 0
- id: in_count_file
  doc: "Tabix indexed file of split counts. Columns:\nchrom,pos,clip,count,sample"
  type: string
  inputBinding:
    position: 1
- id: in_f_out
  doc: Output table of most significant start/endpositions.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtk
- sr-test
