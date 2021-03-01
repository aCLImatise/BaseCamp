class: CommandLineTool
id: get_loci_from_gb.pl.cwl
inputs:
- id: in_gb
  doc: file with gene structures in genbank format
  type: File?
  inputBinding:
    prefix: --gb
- id: in_out
  doc: tabulator separated output file
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: tabulator separated output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- get_loci_from_gb.pl
