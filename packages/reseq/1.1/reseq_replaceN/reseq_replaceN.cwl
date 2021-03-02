class: CommandLineTool
id: reseq_replaceN.cwl
inputs:
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=0) Number of threads used (0=auto)'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbosity
  doc: "(=4)      Sets the level of verbosity (4=everything,\n0=nothing)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_arg_reference_sequences
  doc: "[ --refIn ] arg        Reference sequences in fasta format (gz and bz2\nsupported)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_file_where
  doc: "[ --refSim ] arg       File to where reference sequences in fasta format\n\
    with N's randomly replace should be written to"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_seed
  doc: "Seed used for replacing N, if none is given random\nseed will be used\n"
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq
- replaceN
