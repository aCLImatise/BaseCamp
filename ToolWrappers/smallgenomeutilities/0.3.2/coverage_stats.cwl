class: CommandLineTool
id: coverage_stats.cwl
inputs:
- id: in_name_target_
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: long?
  inputBinding:
    prefix: -t
- id: in_input_sambam_file
  doc: Input SAM/BAM file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_tsv_file
  doc: Output TSV file
  type: File?
  inputBinding:
    prefix: -o
- id: in_msa_of_contigs
  doc: MSA of contigs
  type: File?
  inputBinding:
    prefix: -m
- id: in_select
  doc: Name of contig that is of interest
  type: string?
  inputBinding:
    prefix: --select
- id: in_contig
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tsv_file
  doc: Output TSV file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tsv_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- coverage_stats
