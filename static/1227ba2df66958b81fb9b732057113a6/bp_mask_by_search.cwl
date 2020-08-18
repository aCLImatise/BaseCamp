class: CommandLineTool
id: ../../../bp_mask_by_search.pl.cwl
inputs:
- id: f_slash_format
  doc: Search report format (fasta,blast,axt,hmmer,etc)
  type: string
  inputBinding:
    prefix: -f/--format
- id: sf_slash_s_format
  doc: Sequence format (fasta,genbank,embl,swissprot) --hardmask
  type: string
  inputBinding:
    prefix: -sf/--sformat
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_mask_by_search.pl
