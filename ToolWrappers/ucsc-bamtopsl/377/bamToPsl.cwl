class: CommandLineTool
id: bamToPsl.cwl
inputs:
- id: in_fast_a
  doc: '- output query sequences to specified file'
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_chrom_alias
  doc: "- specify a two-column file: 1: alias, 2: other name\nfor target name translation\
    \ from column 1 name to column 2 name\nnames not found are passed through intact"
  type: File?
  inputBinding:
    prefix: -chromAlias
- id: in_no_head
  doc: '- do not output the PSL header, default has header output'
  type: boolean?
  inputBinding:
    prefix: -nohead
- id: in_allow_dups
  doc: "- for fasta output, allow duplicate query sequences output\n- default is to\
    \ eliminate duplicate sequences\n- runs much faster without the duplicate check"
  type: boolean?
  inputBinding:
    prefix: -allowDups
- id: in_no_sequence_verify
  doc: "- when checking for dups, do not verify each sequence\n- when the same name\
    \ is identical, assume they are\n- helps speed up the dup check but not thorough"
  type: boolean?
  inputBinding:
    prefix: -noSequenceVerify
- id: in_dots
  doc: '- output progress dot(.) every N alignments processed'
  type: string?
  inputBinding:
    prefix: -dots
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a
  doc: '- output query sequences to specified file'
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- bamToPsl
