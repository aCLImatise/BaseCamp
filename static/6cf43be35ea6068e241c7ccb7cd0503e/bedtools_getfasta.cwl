class: CommandLineTool
id: ../../../bedtools_getfasta.cwl
inputs:
- id: in_fi
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: -fi
- id: in_fo
  doc: Output file (opt., default is STDOUT
  type: File
  inputBinding:
    prefix: -fo
- id: in_bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_name_only
  doc: Use the name field for the FASTA header
  type: boolean
  inputBinding:
    prefix: -nameOnly
- id: in_split
  doc: "Given BED12 fmt., extract and concatenate the sequences\nfrom the BED \"blocks\"\
    \ (e.g., exons)"
  type: boolean
  inputBinding:
    prefix: -split
- id: in_tab
  doc: "Write output in TAB delimited format.\n- Default is FASTA format."
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_force_strandedness_feature
  doc: "Force strandedness. If the feature occupies the antisense,\nstrand, the sequence\
    \ will be reverse complemented.\n- By default, strand information is ignored."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_full_header
  doc: "Use full fasta header.\n- By default, only the word before the first space\
    \ or tab\nis used.\n"
  type: boolean
  inputBinding:
    prefix: -fullHeader
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fo
  doc: Output file (opt., default is STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_fo)
cwlVersion: v1.1
baseCommand:
- bedtools
- getfasta
