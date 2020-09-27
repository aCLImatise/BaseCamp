class: CommandLineTool
id: fastaparse.pl.cwl
inputs:
- id: in_only_output_entries
  doc: only output entries where the sequence is minimum int nts long
  type: long
  inputBinding:
    prefix: -a
- id: in_remove_entries_sequence
  doc: "remove all entries that have a sequence that contains letters\nother than\
    \ a,c,g,t,u,n,A,C,G,T,U,N."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_progress
  doc: output progress
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaparse.pl
