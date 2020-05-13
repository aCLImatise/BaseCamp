class: CommandLineTool
id: dnp_binstrings.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: dinucleotide
  doc: 'Dinucleotide that is to identify in fasta sequences One of AA, AC, AG, AT,
    CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default: CC.'
  type: string
  inputBinding:
    prefix: --dinucleotide
outputs: []
cwlVersion: v1.1
baseCommand:
- dnp-binstrings
