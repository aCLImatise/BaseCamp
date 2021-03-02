class: CommandLineTool
id: gofasta_closest.cwl
inputs:
- id: in_outfile
  doc: The output file to write (default "snps.csv")
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_query
  doc: Alignment of sequences to find matches for, in fasta format
  type: string?
  inputBinding:
    prefix: --query
- id: in_target
  doc: Alignment of sequences to search for matches in, in fasta format
  type: string?
  inputBinding:
    prefix: --target
- id: in_threads
  doc: Number of threads to use (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: The output file to write (default "snps.csv")
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gofasta:0.0.3--0
cwlVersion: v1.1
baseCommand:
- gofasta
- closest
