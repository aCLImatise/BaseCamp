class: CommandLineTool
id: maskFastaFromBed.cwl
inputs:
- id: in_fi
  doc: Input FASTA file
  type: boolean?
  inputBinding:
    prefix: -fi
- id: in_bed
  doc: BED/GFF/VCF file of ranges to mask in -fi
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_fo
  doc: Output FASTA file
  type: File?
  inputBinding:
    prefix: -fo
- id: in_soft
  doc: "Enforce \"soft\" masking.\nMask with lower-case bases, instead of masking\
    \ with Ns."
  type: boolean?
  inputBinding:
    prefix: -soft
- id: in_mc
  doc: "Replace masking character.\nUse another character, instead of masking with\
    \ Ns."
  type: boolean?
  inputBinding:
    prefix: -mc
- id: in_full_header
  doc: "Use full fasta header.\nBy default, only the word before the first space or\
    \ tab\nis used.\n"
  type: boolean?
  inputBinding:
    prefix: -fullHeader
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mask_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fo
  doc: Output FASTA file
  type: File?
  outputBinding:
    glob: $(inputs.in_fo)
hints: []
cwlVersion: v1.1
baseCommand:
- maskFastaFromBed
