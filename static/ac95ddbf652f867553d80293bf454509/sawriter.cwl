class: CommandLineTool
id: sawriter.cwl
inputs:
- id: in_blt
  doc: "Build a lookup table on prefixes of length 'p'. This speeds\nup lookups considerably\
    \ (more than the LCP table), but misses matches\nless than p when searching."
  type: long
  inputBinding:
    prefix: -blt
- id: in_four_bit
  doc: Read in (one) fasta file as a compressed sequence file.
  type: boolean
  inputBinding:
    prefix: -4bit
- id: in_larsson
  doc: (default)  Uses the method of Larsson and Sadakane to build the array.
  type: boolean
  inputBinding:
    prefix: -larsson
- id: in_ma_my
  doc: "Uses the method of MAnber and MYers to build the array (slower than larsson,\n\
    and produces the same result. This is mainly for double checking\nthe correctness\
    \ of larsson)."
  type: boolean
  inputBinding:
    prefix: -mamy
- id: in_kark
  doc: "Use Karkkainen DS3 method for building the suffix array.  This will probably\
    \ be more\nslow than larsson, but takes only an extra N/(sqrt 3) extra space."
  type: boolean
  inputBinding:
    prefix: -kark
- id: in_ma_fe
  doc: (disabled for now!) Use the lightweight construction algorithm from Manzini
    and Ferragina
  type: boolean
  inputBinding:
    prefix: -mafe
- id: in_welter
  doc: "Use lightweight (sort of light) suffix array construction.  This is a bit\
    \ more slow than\nnormal larsson."
  type: boolean
  inputBinding:
    prefix: -welter
- id: in_welterweight
  doc: use a difference cover of size N for building the suffix array.  Valid values
    are 7,32,64,111, and 2281.
  type: long
  inputBinding:
    prefix: -welterweight
- id: in_kar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -kar
- id: in_man_my
  doc: ''
  type: boolean
  inputBinding:
    prefix: -manmy
- id: in_or
  doc: sawriter fastaIn  (writes to fastIn.sa).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sawriter
