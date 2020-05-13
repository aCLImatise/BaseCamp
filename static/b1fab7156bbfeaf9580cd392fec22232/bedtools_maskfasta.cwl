class: CommandLineTool
id: bedtools_maskfasta.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- maskfasta
