class: CommandLineTool
id: ../../../infer_experiment.py.cwl
inputs:
- id: input_file
  doc: Input alignment file in SAM or BAM format
  type: string
  inputBinding:
    prefix: --input-file
- id: ref_gene
  doc: Reference gene model in bed fomat.
  type: string
  inputBinding:
    prefix: --refgene
- id: sample_size
  doc: Number of reads sampled from SAM/BAM file. default=200000
  type: string
  inputBinding:
    prefix: --sample-size
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be considered as
    "uniquely mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- infer_experiment.py
