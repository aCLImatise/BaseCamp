class: CommandLineTool
id: gofasta_snps.cwl
inputs:
- id: in_outfile
  doc: Output to write (default "stdout")
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_query
  doc: Alignment of sequences to find snps in, in fasta format (default "stdin")
  type: string?
  inputBinding:
    prefix: --query
- id: in_reference
  doc: Reference sequence, in fasta format
  type: string?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gofasta:0.0.3--0
cwlVersion: v1.1
baseCommand:
- gofasta
- snps
