class: CommandLineTool
id: ../../../sreformat.cwl
inputs:
- id: force_dna_alphabet
  doc: ': force DNA alphabet for nucleic acid sequence'
  type: boolean
  inputBinding:
    prefix: -d
- id: force_rna_alphabet
  doc: ': force RNA alphabet for nucleic acid sequence'
  type: boolean
  inputBinding:
    prefix: -r
- id: force_lower_case
  doc: ': force lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: force_upper_case
  doc: ': force upper case'
  type: boolean
  inputBinding:
    prefix: -u
- id: convert_noniupac_chars
  doc: ": convert non-IUPAC chars in DNA to N's for IUPAC/BLAST compatibility"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_format
  doc: ': input sequence file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: min_gap
  doc: ': remove columns containing all gaps (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --mingap
- id: no_gap
  doc: ': remove columns containing any gaps (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --nogap
- id: pfam
  doc: ': modify Stockholm format output to be in PFAM style (1 line/seq)'
  type: boolean
  inputBinding:
    prefix: --pfam
- id: sam
  doc: ': try to convert gaps to SAM style (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: sam_frac
  doc: ': convert to SAM convention; cols w/ gapfrac > x are inserts'
  type: string
  inputBinding:
    prefix: --samfrac
- id: gap_sym
  doc: ": convert all gaps to character '<c>'"
  type: string
  inputBinding:
    prefix: --gapsym
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: fast_a
  doc: stockholm
  type: string
  inputBinding:
    position: 0
- id: embl
  doc: msf
  type: string
  inputBinding:
    position: 1
- id: genbank
  doc: a2m
  type: string
  inputBinding:
    position: 2
- id: gcg
  doc: phylip
  type: string
  inputBinding:
    position: 3
- id: gcg_data
  doc: clustal
  type: string
  inputBinding:
    position: 4
- id: pir
  doc: selex
  type: string
  inputBinding:
    position: 5
- id: raw
  doc: eps
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- sreformat
