class: CommandLineTool
id: artic_tools_validate_scheme.cwl
inputs:
- id: in_output_primers_eqs
  doc: If provided, will write primer sequences as multiFASTA (requires --refSeq to
    be provided)
  type: string?
  inputBinding:
    prefix: --outputPrimerSeqs
- id: in_refseq
  doc: The reference sequence for the primer scheme (FASTA format)
  type: string?
  inputBinding:
    prefix: --refSeq
- id: in_output_inserts
  doc: If provided, will write primer scheme inserts as BED (exluding primer sequences)
  type: string?
  inputBinding:
    prefix: --outputInserts
- id: in_scheme
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0
cwlVersion: v1.1
baseCommand:
- artic-tools
- validate_scheme
