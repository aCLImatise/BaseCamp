class: CommandLineTool
id: ../../../fastaFromBed.cwl
inputs:
- id: fi
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: -fi
- id: fo
  doc: Output file (opt., default is STDOUT
  type: boolean
  inputBinding:
    prefix: -fo
- id: bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean
  inputBinding:
    prefix: -bed
- id: name_only
  doc: Use the name field for the FASTA header
  type: boolean
  inputBinding:
    prefix: -nameOnly
- id: split
  doc: Given BED12 fmt., extract and concatenate the sequences from the BED "blocks"
    (e.g., exons)
  type: boolean
  inputBinding:
    prefix: -split
- id: tab
  doc: Write output in TAB delimited format. - Default is FASTA format.
  type: boolean
  inputBinding:
    prefix: -tab
- id: force_strandedness_feature
  doc: Force strandedness. If the feature occupies the antisense, strand, the sequence
    will be reverse complemented. - By default, strand information is ignored.
  type: boolean
  inputBinding:
    prefix: -s
- id: full_header
  doc: Use full fasta header. - By default, only the word before the first space or
    tab  is used.
  type: boolean
  inputBinding:
    prefix: -fullHeader
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: get_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaFromBed
