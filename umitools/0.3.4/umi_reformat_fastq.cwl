class: CommandLineTool
id: umi_reformat_fastq.cwl
inputs:
- id: left
  doc: 'the input fastq file for r1. (default: None)'
  type: string
  inputBinding:
    prefix: --left
- id: right
  doc: 'the input fastq file for r2. (default: None)'
  type: string
  inputBinding:
    prefix: --right
- id: left_out
  doc: 'the output fastq file for r1 (default: None)'
  type: string
  inputBinding:
    prefix: --left-out
- id: right_out
  doc: 'the output fastq file for r2 (default: None)'
  type: string
  inputBinding:
    prefix: --right-out
- id: verbose
  doc: 'Also include detailed stats for UMI and padding usage (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: umi_locator
  doc: 'Set the UMI locators. If you have multiple, separate them by comma. e.g. GGG,TCA,ATC
    (default: GGG,TCA,ATC)'
  type: string
  inputBinding:
    prefix: --umi-locator
- id: umi_padding
  doc: 'Set the nucleotide (for preventing ligation bias) after the UMI locators.
    If you have multiple, separate them by comma. e.g. A,C,G,T. The quality for this
    nt is sometimes low, so the default is all possible four nucleotides (default:
    A,C,G,T,N)'
  type: string
  inputBinding:
    prefix: --umi-padding
- id: umi_pattern
  doc: 'Set the UMI patterns. (default: None)'
  type: string
  inputBinding:
    prefix: --umi-pattern
- id: quality
  doc: 'Quality (phred quality score) cutoff for UMI.Default is 13, that is UMI with
    qualities >= 13 willbe kept. This program assumes the phred quality scoresin the
    fastq file are using sanger format (default: 13)'
  type: string
  inputBinding:
    prefix: --quality
- id: debug
  doc: 'Turn on debugging mode (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_reformat_fastq
