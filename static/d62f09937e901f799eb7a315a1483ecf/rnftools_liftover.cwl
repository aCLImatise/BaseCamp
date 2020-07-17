class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_liftover.cwl
inputs:
- id: chain
  doc: Chain liftover file for coordinates transformation. [no transformation]
  type: File
  inputBinding:
    prefix: --chain
- id: genome_id
  doc: ID of genome to be transformed.
  type: long
  inputBinding:
    prefix: --genome-id
- id: fa_idx
  doc: Fasta index of the reference sequence. [extract from chain file]
  type: File
  inputBinding:
    prefix: --faidx
- id: invert
  doc: Invert chain file (transformation in the other direction).
  type: boolean
  inputBinding:
    prefix: --invert
- id: input_format
  doc: Input format (SAM/BAM/FASTQ). [autodetect]
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: Output format (SAM/BAM/FASTQ). [autodetect]
  type: string
  inputBinding:
    prefix: --output-format
- id: input
  doc: Input file to be transformed (- for standard input).
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file to be transformed (- for standard output).
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- liftover
