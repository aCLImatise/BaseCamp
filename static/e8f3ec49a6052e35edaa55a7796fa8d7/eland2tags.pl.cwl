class: CommandLineTool
id: eland2tags.pl.cwl
inputs:
- id: in_mis
  doc: <0,1,2> (Max mismatches, default=2)
  type: boolean?
  inputBinding:
    prefix: -mis
- id: in_len
  doc: '# (only consider mismatches within the first # bp of sequence [for eland_extended]-def:
    32)'
  type: boolean?
  inputBinding:
    prefix: -len
- id: in_uniq
  doc: <#> (Max matches to genome for multiple eland format, default=1)
  type: boolean?
  inputBinding:
    prefix: -uniq
- id: in_seq
  doc: (include sequence with tag)
  type: boolean?
  inputBinding:
    prefix: -seq
- id: in_non_uniq
  doc: (include a single version of nonuniq tags, bowtie only)
  type: boolean?
  inputBinding:
    prefix: -nonuniq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eland2tags.pl
