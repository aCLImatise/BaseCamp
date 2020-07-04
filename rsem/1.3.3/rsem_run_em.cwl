class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_run_em.cwl
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
- id: gibbs_out
  doc: ': generate output file used by Gibbs sampler. (default: off)'
  type: boolean
  inputBinding:
    prefix: --gibbs-out
- id: sampling
  doc: ': sample each read from its posterior distribution when BAM file is generated.
    (default: off)'
  type: boolean
  inputBinding:
    prefix: --sampling
- id: seed
  doc: ': the seed used for the BAM sampling. (default: off)'
  type: string
  inputBinding:
    prefix: --seed
- id: append_names
  doc: ': append transcript_name/gene_name when available. (default: off)'
  type: boolean
  inputBinding:
    prefix: --append-names
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-run-em
