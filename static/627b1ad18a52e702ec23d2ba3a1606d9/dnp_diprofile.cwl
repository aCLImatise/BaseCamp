class: CommandLineTool
id: dnp_diprofile.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: dinucleotide
  doc: 'Dinucleotide to compute a frequency profile in fasta file. One of AA, AC,
    AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default: AA.'
  type: string
  inputBinding:
    prefix: --dinucleotide
- id: seq_length
  doc: 'Sequence length in fasta file. In range [25..600]. Default: 600.'
  type: long
  inputBinding:
    prefix: --seqlength
- id: complement
  doc: Perform computation on COMPLEMENTARY sequences of the strings in fasta file.
  type: boolean
  inputBinding:
    prefix: --complement
- id: verbose
  doc: Print parameters and variables.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- dnp-diprofile
