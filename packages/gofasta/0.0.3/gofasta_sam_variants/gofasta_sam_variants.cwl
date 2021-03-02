class: CommandLineTool
id: gofasta_sam_variants.cwl
inputs:
- id: in_genbank
  doc: Genbank format annotation of a sequence in the same coordinates as the alignment
  type: string?
  inputBinding:
    prefix: --genbank
- id: in_outfile
  doc: Where to write the variants (default "stdout")
  type: string?
  inputBinding:
    prefix: --outfile
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
- variants
