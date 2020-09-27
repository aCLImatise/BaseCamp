class: CommandLineTool
id: umi_reformat_fastq.cwl
inputs:
- id: in_left
  doc: 'the input fastq file for r1. (default: None)'
  type: File
  inputBinding:
    prefix: --left
- id: in_right
  doc: 'the input fastq file for r2. (default: None)'
  type: File
  inputBinding:
    prefix: --right
- id: in_left_out
  doc: 'the output fastq file for r1 (default: None)'
  type: File
  inputBinding:
    prefix: --left-out
- id: in_right_out
  doc: 'the output fastq file for r2 (default: None)'
  type: File
  inputBinding:
    prefix: --right-out
- id: in_verbose
  doc: "Also include detailed stats for UMI and padding usage\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_umi_locator
  doc: "Set the UMI locators. If you have multiple, separate\nthem by comma. e.g.\
    \ GGG,TCA,ATC (default: GGG,TCA,ATC)"
  type: string
  inputBinding:
    prefix: --umi-locator
- id: in_umi_padding
  doc: "Set the nucleotide (for preventing ligation bias)\nafter the UMI locators.\
    \ If you have multiple, separate\nthem by comma. e.g. A,C,G,T. The quality for\
    \ this nt\nis sometimes low, so the default is all possible four\nnucleotides\
    \ (default: A,C,G,T,N)"
  type: string
  inputBinding:
    prefix: --umi-padding
- id: in_umi_pattern
  doc: 'Set the UMI patterns. (default: None)'
  type: string
  inputBinding:
    prefix: --umi-pattern
- id: in_quality
  doc: "Quality (phred quality score) cutoff for UMI.Default\nis 13, that is UMI with\
    \ qualities >= 13 willbe kept.\nThis program assumes the phred quality scoresin\
    \ the\nfastq file are using sanger format (default: 13)"
  type: File
  inputBinding:
    prefix: --quality
- id: in_debug
  doc: 'Turn on debugging mode (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_left_out
  doc: 'the output fastq file for r1 (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_left_out)
- id: out_right_out
  doc: 'the output fastq file for r2 (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_right_out)
cwlVersion: v1.1
baseCommand:
- umi_reformat_fastq
