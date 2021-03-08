class: CommandLineTool
id: president.cwl
inputs:
- id: in_reference
  doc: Reference genome.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_query
  doc: Query genome(s).
  type: string[]
  inputBinding:
    prefix: --query
- id: in_id_threshold
  doc: "ACGT nucleotide identity threshold after alignment\n(percentage). A query\
    \ sequence is reported as valid\nbased on this threshold (def: 0.9)"
  type: double?
  inputBinding:
    prefix: --id_threshold
- id: in_n_threshold
  doc: "A query sequence is reported as valid, if the\npercentage of Ns is smaller\
    \ or equal the threshold\n(def: 0.05)"
  type: double?
  inputBinding:
    prefix: --n_threshold
- id: in_threads
  doc: Number of threads to use for pblat.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_path
  doc: Path to be used to store results and FASTA files.
  type: File?
  inputBinding:
    prefix: --path
- id: in_prefix
  doc: Prefix to be used t store results in the path
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/president:0.5.2--py_0
cwlVersion: v1.1
baseCommand:
- president
