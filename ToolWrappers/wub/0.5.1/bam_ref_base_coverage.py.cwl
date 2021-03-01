class: CommandLineTool
id: bam_ref_base_coverage.py.cwl
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
- id: in_output_tab_file
  doc: Output tab separated file (bam_ref_base_coverage.tsv).
  type: File?
  inputBinding:
    prefix: -t
- id: in_minimum_base_coverage
  doc: Minimum base coverage for a position to be counted (1).
  type: long?
  inputBinding:
    prefix: -m
- id: in_be_quiet_show
  doc: Be quiet and do not show progress bars.
  type: boolean?
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tab_file
  doc: Output tab separated file (bam_ref_base_coverage.tsv).
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tab_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam_ref_base_coverage.py
