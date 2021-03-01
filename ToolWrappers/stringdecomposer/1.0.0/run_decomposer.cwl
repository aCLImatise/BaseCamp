class: CommandLineTool
id: run_decomposer.cwl
inputs:
- id: in_threads
  doc: number of threads (by default 1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_out_file
  doc: output tsv-file (by default final_decomposition.tsv)
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_min_identity
  doc: "only monomer alignments with percent identity >=\nMIN_IDENTITY are printed\
    \ (by default MIN_IDENTITY=0)"
  type: long?
  inputBinding:
    prefix: --min-identity
- id: in_scoring
  doc: "set scoring scheme for SD in the format\n\"insertion,deletion,mismatch,match\"\
    \ (by default\n\"-1,-1,-1,1\")"
  type: long?
  inputBinding:
    prefix: --scoring
- id: in_batch_size
  doc: "set size of the batch in parallelization (by default\n5000)"
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_fast
  doc: "doesn't generate second best monomer and homopolymer\nscores\n"
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_sequences
  doc: fasta-file with long reads or genomic sequences
  type: string
  inputBinding:
    position: 0
- id: in_monomers
  doc: fasta-file with monomers
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: output tsv-file (by default final_decomposition.tsv)
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stringdecomposer:1.0.0--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- run_decomposer
