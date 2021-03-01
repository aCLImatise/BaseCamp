class: CommandLineTool
id: fixErrors.cwl
inputs:
- id: in_seqstore_path_sequence
  doc: seqStore           path to a sequence store
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_red
  doc: path to the output .red file from findErrors
  type: File?
  inputBinding:
    prefix: -red
- id: in_bgnidendid_output_only
  doc: bgnID-endID        output only reads bgnID through endID, inclusive
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_outfasta_write_fasta
  doc: out.fasta[.gz]     write FASTA to file 'out.fasta, optionally compressing
  type: File?
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_red
  doc: path to the output .red file from findErrors
  type: File?
  outputBinding:
    glob: $(inputs.in_red)
- id: out_outfasta_write_fasta
  doc: out.fasta[.gz]     write FASTA to file 'out.fasta, optionally compressing
  type: File?
  outputBinding:
    glob: $(inputs.in_outfasta_write_fasta)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- fixErrors
