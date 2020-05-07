class: CommandLineTool
id: alignment_stats_from_sam.py.cwl
inputs:
- id: input
  doc: Input fasta or fastq.
  type: string
  inputBinding:
    prefix: --input
- id: sam_filename
  doc: Aligned SAM filename.
  type: string
  inputBinding:
    prefix: --sam_filename
- id: genome_filename
  doc: Genome fasta.
  type: string
  inputBinding:
    prefix: --genome_filename
- id: output_prefix
  doc: Output prefix.
  type: string
  inputBinding:
    prefix: --output_prefix
- id: gff
  doc: Annotation GFF (optional).
  type: string
  inputBinding:
    prefix: --gff
outputs: []
cwlVersion: v1.1
baseCommand:
- alignment_stats_from_sam.py
