class: CommandLineTool
id: alignment_stats_from_sam.py.cwl
inputs:
- id: in_input
  doc: Input fasta or fastq.
  type: string
  inputBinding:
    prefix: --input
- id: in_sam_filename
  doc: Aligned SAM filename.
  type: File
  inputBinding:
    prefix: --sam_filename
- id: in_genome_filename
  doc: Genome fasta.
  type: File
  inputBinding:
    prefix: --genome_filename
- id: in_output_prefix
  doc: Output prefix.
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_gff
  doc: Annotation GFF (optional).
  type: string
  inputBinding:
    prefix: --gff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alignment_stats_from_sam.py
