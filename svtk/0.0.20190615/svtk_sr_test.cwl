class: CommandLineTool
id: ../../../svtk_sr_test.cwl
inputs:
- id: window
  doc: Window around variant start/end to consider for split read support. [100]
  type: string
  inputBinding:
    prefix: --window
- id: background
  doc: Number of background samples to choose for comparison in t-test. [160]
  type: string
  inputBinding:
    prefix: --background
- id: samples
  doc: Whitelist of samples to restrict testing to.
  type: string
  inputBinding:
    prefix: --samples
- id: index
  doc: Tabix index of discordant pair file. Required if discordant pair file is hosted
    remotely.
  type: string
  inputBinding:
    prefix: --index
- id: median_file
  doc: Median coverage statistics for each library (optional). If provided, each sample's
    split counts will be normalized accordingly. Same format as RdTest, one column
    per sample.
  type: string
  inputBinding:
    prefix: --medianfile
- id: log
  doc: Print progress log to stderr.
  type: boolean
  inputBinding:
    prefix: --log
- id: vcf
  doc: VCF of variant calls. Standardized to include CHR2, END, SVTYPE, STRANDS in
    INFO.
  type: string
  inputBinding:
    position: 0
- id: count_file
  doc: 'Tabix indexed file of split counts. Columns: chrom,pos,clip,count,sample'
  type: string
  inputBinding:
    position: 1
- id: f_out
  doc: Output table of most significant start/endpositions.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- sr-test
