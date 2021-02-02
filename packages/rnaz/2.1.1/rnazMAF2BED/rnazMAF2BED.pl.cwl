class: CommandLineTool
id: rnazMAF2BED.pl.cwl
inputs:
- id: in_seq_id
  doc: "Specify the sequence identifier of the sequence which should be\nused as a\
    \ reference to create the output. Use for example \"hg17\"\nif you want to get\
    \ all sequences containing \"hg17\" in the\nidenitfier (e.g. \"hg17.chr10\", \"\
    hg17.chr22\",...). If this option\nis omitted, the first sequence identifier of\
    \ the first sequence\nin the first alignment block is used."
  type: boolean
  inputBinding:
    prefix: --seq-id
- id: in_cluster
  doc: "Combine overlapping alignments and report non-overlapping\nregions in the\
    \ BED output."
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnazMAF2BED.pl
