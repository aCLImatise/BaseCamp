class: CommandLineTool
id: arcasHLA_convert.cwl
inputs:
- id: in_resolution
  doc: output resolution (1,2,3) or grouping (g-group, p-group)
  type: boolean?
  inputBinding:
    prefix: --resolution
- id: in_outfile
  doc: "output file\ndefault: ./file_basename.resolution.tsv"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_force
  doc: force conversion for grouped alleles even if it results in loss of resolution
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_file
  doc: tsv containing HLA genotypes, see github for example file structure.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "output file\ndefault: ./file_basename.resolution.tsv"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arcas-hla:0.2.0--0
cwlVersion: v1.1
baseCommand:
- arcasHLA
- convert
