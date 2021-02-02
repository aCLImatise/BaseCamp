class: CommandLineTool
id: bp_flanks.pl.cwl
inputs:
- id: in_position_uses_table
  doc: Position uses simple nucleotide sequence feature table
  type: boolean
  inputBinding:
    prefix: -p
- id: in_define_region_asnp
  doc: "to define the region of interest, typically a\nSNP or microsatellite repeat\
    \ around which the flanks are\ndefined.\nThere can be more than one position option\
    \ or you can\ngive a comma separated list to one position option.\nThe format\
    \ of a position is:\n[id:] int | range | in-between [-]\nThe optional id is the\
    \ name you want to call the new\nsequence. If it not given in joins running number\
    \ to the\nentry name with an underscore.\nThe position is either a point (e.g.\
    \ 234), a range (e.g\n250..300) or insertion point between nucleotides\n(e.g.\
    \ 234^235)\nIf the position is not completely within the source\nsequence the\
    \ output sequence will be truncated and it\nwill print a warning.\nThe optional\
    \ hyphen [-] at the end of the position\nindicates that that you want the retrieved\
    \ sequence to be\nin the opposite strand."
  type: long
  inputBinding:
    prefix: --position
- id: in_defaults_length_nucleotides
  doc: Defaults to 100. This is the length of the nucleotides
  type: boolean
  inputBinding:
    prefix: -f
- id: in_flank_len
  doc: "retrieved on both sides of the given position.\nIf the source file does not\
    \ contain"
  type: File
  inputBinding:
    prefix: --flanklen
- id: in_var_4
  doc: "SYNOPSIS\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\naccession\
    \ | filename"
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: tttgaggctgtcagagcgct
  type: string
  inputBinding:
    position: 1
- id: in_var_7
  doc: head1 FEEDBACK
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
- id: in_var_9
  doc: "SYNOPSIS\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\naccession\
    \ | filename"
  type: string
  inputBinding:
    position: 0
- id: in_var_10
  doc: ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag
  type: string
  inputBinding:
    position: 0
- id: in_var_11
  doc: tttgaggctgtcagagcgct
  type: string
  inputBinding:
    position: 1
- id: in_var_12
  doc: head1 FEEDBACK
  type: string
  inputBinding:
    position: 0
- id: in_var_13
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
- id: in_var_14
  doc: "SYNOPSIS\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\naccession\
    \ | filename"
  type: string
  inputBinding:
    position: 0
- id: in_var_15
  doc: ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag
  type: string
  inputBinding:
    position: 0
- id: in_var_16
  doc: tttgaggctgtcagagcgct
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: head1 FEEDBACK
  type: string
  inputBinding:
    position: 0
- id: in_var_18
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
- id: in_var_19
  doc: "SYNOPSIS\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\naccession\
    \ | filename"
  type: string
  inputBinding:
    position: 0
- id: in_var_20
  doc: ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag
  type: string
  inputBinding:
    position: 0
- id: in_var_21
  doc: tttgaggctgtcagagcgct
  type: string
  inputBinding:
    position: 1
- id: in_var_22
  doc: head1 FEEDBACK
  type: string
  inputBinding:
    position: 0
- id: in_var_23
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_flanks.pl
