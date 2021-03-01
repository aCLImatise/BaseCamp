class: CommandLineTool
id: bp_mask_by_search.pl.cwl
inputs:
- id: in_s_format
  doc: Sequence format (fasta,genbank,embl,swissprot)
  type: string?
  inputBinding:
    prefix: --sformat
- id: in_hard_mask
  doc: (booelean) Hard mask the sequence with the maskchar [default
  type: boolean?
  inputBinding:
    prefix: --hardmask
- id: in_outfile
  doc: Output file to save the masked sequence to.
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_type
  doc: Alignment seq type you want to mask, the 'hit' or the
  type: string?
  inputBinding:
    prefix: --type
- id: in_information
  doc: AUTHOR - Jason Stajich
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file to save the masked sequence to.
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_mask_by_search.pl
