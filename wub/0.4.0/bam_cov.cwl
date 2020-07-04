class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_cov.py.cwl
inputs:
- id: reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: bam_region_none
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: output_tsv_bamcovtsv
  doc: Output TSV (bam_cov.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: quiet_show_bars
  doc: Be quiet and do not show progress bars.
  type: boolean
  inputBinding:
    prefix: -Q
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_cov.py
