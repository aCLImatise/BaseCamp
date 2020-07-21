class: CommandLineTool
id: ../../../maskFastaFromBed.cwl
inputs:
- id: fi
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: -fi
- id: bed
  doc: BED/GFF/VCF file of ranges to mask in -fi
  type: boolean
  inputBinding:
    prefix: -bed
- id: fo
  doc: Output FASTA file
  type: boolean
  inputBinding:
    prefix: -fo
- id: soft
  doc: Enforce "soft" masking. Mask with lower-case bases, instead of masking with
    Ns.
  type: boolean
  inputBinding:
    prefix: -soft
- id: mc
  doc: Replace masking character. Use another character, instead of masking with Ns.
  type: boolean
  inputBinding:
    prefix: -mc
- id: full_header
  doc: Use full fasta header. By default, only the word before the first space or
    tab is used.
  type: boolean
  inputBinding:
    prefix: -fullHeader
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maskFastaFromBed
