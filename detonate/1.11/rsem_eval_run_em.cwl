class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_eval_run_em.cwl
inputs:
- id: number_user_wants
  doc: ': number of threads which user wants to use. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: produce_bam_default
  doc: ': produce bam format output file. (default: off)'
  type: boolean
  inputBinding:
    prefix: -b
- id: set_it_quiet
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
