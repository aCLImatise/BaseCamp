class: CommandLineTool
id: bp_mask_by_search.pl.cwl
inputs:
- id: in_format
  doc: or you can just say -f fasta
  type: string
  inputBinding:
    prefix: --format
- id: in_f_slash_format
  doc: Search report format (fasta,blast,axt,hmmer,etc)
  type: string
  inputBinding:
    prefix: -f/--format
- id: in_sf_slash_s_format
  doc: Sequence format (fasta,genbank,embl,swissprot)
  type: string
  inputBinding:
    prefix: -sf/--sformat
- id: in_hard_mask
  doc: (booelean) Hard mask the sequence with the maskchar [default
  type: boolean
  inputBinding:
    prefix: --hardmask
- id: in_oslash_out_slash
  doc: Output file to save the masked sequence to.
  type: File
  inputBinding:
    prefix: -o/--out/
- id: in_t_slash_type
  doc: Alignment seq type you want to mask, the 'hit' or the
  type: string
  inputBinding:
    prefix: -t/--type
- id: in_information
  doc: AUTHOR - Jason Stajich
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_out_slash
  doc: Output file to save the masked sequence to.
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_out_slash)
cwlVersion: v1.1
baseCommand:
- bp_mask_by_search.pl
