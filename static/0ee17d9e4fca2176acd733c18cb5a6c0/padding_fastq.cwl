class: CommandLineTool
id: padding_fastq.py.cwl
inputs:
- id: input
  doc: The input file (in FASTQ format) containing the short reads to be processed.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing the short reads where the reads, shorted than
    '--size', are padding using ' --nucleotide'.
  type: string
  inputBinding:
    prefix: --output
- id: nucleotide
  doc: The character to be use for padding. Default is 'N'.
  type: string
  inputBinding:
    prefix: --nucleotide
- id: size
  doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold will be padded. Reads longer than the threshold will be trimmed
    from 3 end. Default is '0'.
  type: long
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- padding-fastq.py
