class: CommandLineTool
id: get_gff_info_sequence.cwl
inputs:
- id: in_verbose
  doc: Reverse complement sequences on the - strand
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_wrap
  doc: Write the sequences on one line
  type: boolean?
  inputBinding:
    prefix: --no-wrap
- id: in_split
  doc: "Split the sequence header of the reference at the\nfirst space, to emulate\
    \ BLAST behaviour"
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_reference
  doc: "Fasta file containing the reference sequences of\nthe GFF file"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- get-gff-info
- sequence
