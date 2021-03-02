class: CommandLineTool
id: bam_cov.py.cwl
inputs:
- id: in_reference_fasta
  doc: Reference fasta.
  type: string?
  inputBinding:
    prefix: -f
- id: in_bam_region_none
  doc: BAM region (None).
  type: string?
  inputBinding:
    prefix: -c
- id: in_output_tsv_bamcovtsv
  doc: Output TSV (bam_cov.tsv).
  type: string?
  inputBinding:
    prefix: -t
- id: in_minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: long?
  inputBinding:
    prefix: -q
- id: in_be_quiet_show
  doc: Be quiet and do not show progress bars.
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam_cov.py
