class: CommandLineTool
id: extract_gff_info_gtf.cwl
inputs:
- id: in_verbose
  doc: "GFF attribute to use for the GTF *gene_id* attribute\n[default: gene_id]"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- extract-gff-info
- gtf
