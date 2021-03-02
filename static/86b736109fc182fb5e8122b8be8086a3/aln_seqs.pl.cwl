class: CommandLineTool
id: aln_seqs.pl.cwl
inputs:
- id: in_man
  doc: documentation
  type: string?
  inputBinding:
    prefix: --man
- id: in_sort
  doc: by number of sequences
  type: long?
  inputBinding:
    prefix: --sort
- id: in_null
  doc: file name from sequence names by \0
  type: File?
  inputBinding:
    prefix: --null
- id: in_no_hash
  doc: names with prefix '#'
  type: string?
  inputBinding:
    prefix: -no-hash
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aln-seqs.pl
