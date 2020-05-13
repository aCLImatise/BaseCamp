class: CommandLineTool
id: rsem_eval_run_em.cwl
inputs:
- id: p
  doc: ': number of threads which user wants to use. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: ': produce bam format output file. (default: off)'
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: ': set it quiet'
  type: boolean
  inputBinding:
    prefix: -q
- id: sampling
  doc: ': sample each read from its posterior distribution when bam file is generated.
    (default: off)'
  type: boolean
  inputBinding:
    prefix: --sampling
- id: seed
  doc: ': the seed used for the BAM sampling. (default: off)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-eval-run-em
