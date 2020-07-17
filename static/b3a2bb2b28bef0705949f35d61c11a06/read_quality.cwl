class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/read_quality.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format. [required]
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: reduce
  doc: To avoid making huge vector in R, nucleotide with particular phred score less
    frequent than this number will be ignored. Increase this number save more memory
    while reduce precision. Set to 1 achieves maximum precision (i.e. every nucleotide
    will be considered). This option only applies to the 'boxplot'. default=1
  type: string
  inputBinding:
    prefix: --reduce
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- read_quality.py
