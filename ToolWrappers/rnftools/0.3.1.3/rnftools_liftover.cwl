class: CommandLineTool
id: rnftools_liftover.cwl
inputs:
- id: in_chain
  doc: "Chain liftover file for coordinates transformation.\n[no transformation]"
  type: File
  inputBinding:
    prefix: --chain
- id: in_genome_id
  doc: ID of genome to be transformed.
  type: long
  inputBinding:
    prefix: --genome-id
- id: in_fa_idx
  doc: "Fasta index of the reference sequence. [extract from\nchain file]"
  type: File
  inputBinding:
    prefix: --faidx
- id: in_invert
  doc: "Invert chain file (transformation in the other\ndirection)."
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_input_format
  doc: Input format (SAM/BAM/FASTQ). [autodetect]
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Output format (SAM/BAM/FASTQ). [autodetect]
  type: string
  inputBinding:
    prefix: --output-format
- id: in_input
  doc: Input file to be transformed (- for standard input).
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output file to be transformed (- for standard output).
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnftools
- liftover
