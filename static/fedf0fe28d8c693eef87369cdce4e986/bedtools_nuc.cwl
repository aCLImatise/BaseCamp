class: CommandLineTool
id: bedtools_nuc.cwl
inputs:
- id: fi
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: -fi
- id: bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean
  inputBinding:
    prefix: -bed
- id: s
  doc: Profile the sequence according to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: seq
  doc: Print the extracted sequence
  type: boolean
  inputBinding:
    prefix: -seq
- id: pattern
  doc: Report the number of times a user-defined sequence is observed (case-sensitive).
  type: boolean
  inputBinding:
    prefix: -pattern
- id: c
  doc: Ignore case when matching -pattern. By defaulty, case matters.
  type: boolean
  inputBinding:
    prefix: -C
- id: full_header
  doc: Use full fasta header.
  type: boolean
  inputBinding:
    prefix: -fullHeader
- id: by
  doc: ', only the word before the first space or tab is used.'
  type: string
  inputBinding:
    prefix: '- By'
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- nuc
