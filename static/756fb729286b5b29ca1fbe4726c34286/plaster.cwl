class: CommandLineTool
id: plaster.cwl
inputs:
- id: in_realign
  doc: "Realign all input genomes to the resulting pangenome\nto get a more accurate\
    \ fragment mapping"
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_align_only
  doc: "Used with --template. Does not append to pangenome,\njust produces tsv alignment."
  type: boolean?
  inputBinding:
    prefix: --align-only
- id: in_template
  doc: seed genome to use
  type: string?
  inputBinding:
    prefix: --template
- id: in_output
  doc: "output pan-genome fasta and metadata file stem (does\nnot include file extension)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_work_dir
  doc: Directory to save nucmer outputs.
  type: Directory?
  inputBinding:
    prefix: --work-dir
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_length
  doc: Minimum length of sequence attached to the pan-genome
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_frag_len
  doc: Maximum fragment length
  type: long?
  inputBinding:
    prefix: --max-frag-len
- id: in_id_cut_off
  doc: Minimum identity to record alignment in metadata
  type: string?
  inputBinding:
    prefix: --id-cutoff
- id: in_verbose
  doc: Print verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_files
  doc: "a list of input fasta file names. If there is one\nfile, it is assumed that\
    \ this file contains a list of\ninput files separated by a newline"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output pan-genome fasta and metadata file stem (does\nnot include file extension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pan-plaster:1.1.2--0
cwlVersion: v1.1
baseCommand:
- plaster
