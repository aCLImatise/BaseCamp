class: CommandLineTool
id: hifive_quasar.cwl
inputs:
- id: quasar
  doc: The name of the HiFive QuASAR file to write to and pull data from.
  type: string
  inputBinding:
    position: 0
- id: hic
  doc: The name of the HiFive HiC project to use for QuASAR transformation.
  type: string
  inputBinding:
    prefix: --hic
- id: hic2
  doc: The name of the second HiFive HiC project to use for QuASAR replicate scoring.
  type: string
  inputBinding:
    prefix: --hic2
- id: quasar2
  doc: The name of the second HiFive QuASAR file to write to and pull data from for
    QuASAR replicate scoring.
  type: string
  inputBinding:
    prefix: --quasar2
- id: report
  doc: The name of the file to write all scoring results to. This can be either a
    txt or PDF file and format will be determined by the file suffix.
  type: string
  inputBinding:
    prefix: --report
- id: chromosomes
  doc: 'A comma-separated list of chromosomes to find QuASAR transformations for (None
    indicates all chromosomes). [default: None]'
  type: string
  inputBinding:
    prefix: --chromosomes
- id: resolutions
  doc: 'A comma-separated list of resolutions to find QuASAR transformations for.
    [default: 10000,40000,200000,1000000]'
  type: string
  inputBinding:
    prefix: --resolutions
- id: coverages
  doc: 'A comma-separated list of coverages to find QuASAR transformations for. [default:
    0,1000000,2000000,4000000,8000000,16000000,32000000]'
  type: string
  inputBinding:
    prefix: --coverages
- id: scores_only
  doc: 'Report only scores in report, no additional analyses. [default: False]'
  type: boolean
  inputBinding:
    prefix: --scores_only
- id: seed
  doc: 'The seed value for the random number generating function. [default: None]'
  type: string
  inputBinding:
    prefix: --seed
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- quasar
