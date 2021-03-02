class: CommandLineTool
id: gendb.cwl
inputs:
- id: in_alph
  doc: Set the alphabet (overrides -type)
  type: File?
  inputBinding:
    prefix: -alph
- id: in_am_big
  doc: "Set the fraction of symbols that\nwill be ambiguous (overrides -type)"
  type: string?
  inputBinding:
    prefix: -ambig
- id: in_b_file
  doc: Set the background
  type: File?
  inputBinding:
    prefix: -bfile
- id: in_min_seq
  doc: "Set the minimum sequence length\n(default: 50)"
  type: long?
  inputBinding:
    prefix: -minseq
- id: in_max_seq
  doc: "Set the maximum sequence length\n(default: 2000)"
  type: long?
  inputBinding:
    prefix: -maxseq
- id: in_order
  doc: "Set the highest background order to load\n(default: load highest available)"
  type: string?
  inputBinding:
    prefix: -order
- id: in_type
  doc: "|1|2|3|4          Set the alphabet type\n0 = Protein with 1% ambiguous symbols\
    \ (default)\n1 = DNA with 1% ambiguous symbols\n2 = codons (ignores -bfile)\n\
    3 = DNA without ambiguous symbols\n4 = Protein without ambiguous symbols"
  type: long?
  inputBinding:
    prefix: -type
- id: in_dummy
  doc: Add dummy sequence showing the configuration
  type: boolean?
  inputBinding:
    prefix: -dummy
- id: in_seed
  doc: Set the pseudo-random number generator seed
  type: long?
  inputBinding:
    prefix: -seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- gendb
