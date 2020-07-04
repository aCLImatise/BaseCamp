class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/junction_annotation.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: ref_gene
  doc: Reference gene model in bed format. This file is better to be a pooled gene
    model as it will be used to annotate splicing junctions [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: min_intron
  doc: Minimum intron length (bp). default=50 [optional]
  type: long
  inputBinding:
    prefix: --min-intron
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be considered as
    "uniquely mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- junction_annotation.py
