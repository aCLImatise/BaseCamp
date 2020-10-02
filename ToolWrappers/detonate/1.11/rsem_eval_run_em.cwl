class: CommandLineTool
id: rsem_eval_run_em.cwl
inputs:
- id: in_number_user_wants
  doc: ': number of threads which user wants to use. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_produce_bam_default
  doc: ': produce bam format output file. (default: off)'
  type: File
  inputBinding:
    prefix: -b
- id: in_set_it_quiet
  doc: ': set it quiet'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_sampling
  doc: ': sample each read from its posterior distribution when bam file is generated.
    (default: off)'
  type: boolean
  inputBinding:
    prefix: --sampling
- id: in_seed
  doc: ': the seed used for the BAM sampling. (default: off)'
  type: long
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_produce_bam_default
  doc: ': produce bam format output file. (default: off)'
  type: File
  outputBinding:
    glob: $(inputs.in_produce_bam_default)
cwlVersion: v1.1
baseCommand:
- rsem-eval-run-em
