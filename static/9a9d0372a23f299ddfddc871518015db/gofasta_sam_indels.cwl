class: CommandLineTool
id: gofasta_sam_indels.cwl
inputs:
- id: in_insertions_out
  doc: Where to write the insertions (default "insertions.txt")
  type: string?
  inputBinding:
    prefix: --insertions-out
- id: in_deletions_out
  doc: Where to write the deletions (default "deletions.txt")
  type: string?
  inputBinding:
    prefix: --deletions-out
- id: in_threshold
  doc: Minimum count for an indel to be included in the output (default 2)
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_reference
  doc: Reference fasta file used to generate the sam file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_sam_file
  doc: samfile to read. If none is specified, will read from stdin
  type: string?
  inputBinding:
    prefix: --samfile
- id: in_threads
  doc: Number of threads to use (default 1)
  type: long?
  inputBinding:
    prefix: --threads
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
- sam
- indels
