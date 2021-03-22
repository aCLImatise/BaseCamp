class: CommandLineTool
id: cluster_sites_by_overlap.py.cwl
inputs:
- id: in_bedfiles_id_th
  doc: "[BEDFILES [BEDFILES ...]]\nBedfiles with ID in the 4th column"
  type: boolean?
  inputBinding:
    prefix: --bedfiles
- id: in_outdir
  doc: 'Output directory (default: bedfile_clustering_output)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: bedfile_clustering_output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- cluster_sites_by_overlap.py
