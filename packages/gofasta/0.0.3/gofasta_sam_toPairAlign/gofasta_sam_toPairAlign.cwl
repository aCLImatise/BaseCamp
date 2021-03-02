class: CommandLineTool
id: gofasta_sam_toPairAlign.cwl
inputs:
- id: in_genbank
  doc: Genbank format annotation of a sequence in the same coordinates as the alignment
  type: string?
  inputBinding:
    prefix: --genbank
- id: in_feature
  doc: 'Feature to output (choose one of: gene, CDS). If none is specified, will output
    the entire alignment'
  type: string?
  inputBinding:
    prefix: --feature
- id: in_out_path
  doc: Output path where fasta files will be written
  type: File?
  inputBinding:
    prefix: --outpath
- id: in_omit_reference
  doc: Omit the reference sequences from the output alignments
  type: boolean?
  inputBinding:
    prefix: --omit-reference
- id: in_skip_insertions
  doc: Skip insertions relative to the reference
  type: boolean?
  inputBinding:
    prefix: --skip-insertions
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
- id: out_out_path
  doc: Output path where fasta files will be written
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gofasta:0.0.3--0
cwlVersion: v1.1
baseCommand:
- gofasta
- sam
- toPairAlign
