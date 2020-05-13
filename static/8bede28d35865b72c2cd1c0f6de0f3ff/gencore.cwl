class: CommandLineTool
id: gencore.cwl
inputs:
- id: high_qual
  doc: the threshold for a quality score to be considered as high quality. Default
    30 means Q30. (int [=30])
  type: boolean
  inputBinding:
    prefix: --high_qual
- id: moderate_qual
  doc: the threshold for a quality score to be considered as moderate quality. Default
    20 means Q20. (int [=20])
  type: boolean
  inputBinding:
    prefix: --moderate_qual
- id: low_qual
  doc: the threshold for a quality score to be considered as low quality. Default
    15 means Q15. (int [=15])
  type: boolean
  inputBinding:
    prefix: --low_qual
- id: coverage_sampling
  doc: the sampling rate for genome scale coverage statistics. Default 10000 means
    1/10000. (int [=10000])
  type: boolean
  inputBinding:
    prefix: --coverage_sampling
- id: json
  doc: the json format report file name (string [=gencore.json])
  type: boolean
  inputBinding:
    prefix: --json
- id: debug
  doc: output some debug information to STDERR.
  type: boolean
  inputBinding:
    prefix: --debug
- id: quit_after_contig
  doc: stop when <quit_after_contig> contigs are processed. Only used for fast debugging.
    Default 0 means no limitation. (int [=0])
  type: boolean
  inputBinding:
    prefix: --quit_after_contig
outputs: []
cwlVersion: v1.1
baseCommand:
- gencore
