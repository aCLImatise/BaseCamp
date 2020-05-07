class: CommandLineTool
id: gaas_fastq_deinterleave_bash.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input fastq file that will be read.'
  type: string
  inputBinding:
    prefix: --input
- id: output_suffix_1
  doc: 'STRING: Suffix to add to the output file 1. By default 1'
  type: boolean
  inputBinding:
    prefix: --output_suffix1
- id: output_suffix_2
  doc: 'STRING: Suffix to add to the output file 2. By default 2.'
  type: boolean
  inputBinding:
    prefix: --output_suffix2
- id: gzip
  doc: 'Bolean: The output will be compressed using pigz.'
  type: string
  inputBinding:
    prefix: --gzip
- id: thread
  doc: 'Integer: The number of thread used when running pigz.'
  type: boolean
  inputBinding:
    prefix: --thread
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fastq_deinterleave_bash.pl
