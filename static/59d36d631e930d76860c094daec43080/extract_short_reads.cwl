class: CommandLineTool
id: extract_short_reads.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format (Solexa). Can be given as gzipped file too.
  type: string
  inputBinding:
    prefix: --input
- id: list
  doc: A text file containing on each line a name of short read which should be extracted
    from the input FASTQ file.
  type: string
  inputBinding:
    prefix: --list
- id: output
  doc: The output FASTQ file.
  type: string
  inputBinding:
    prefix: --output
- id: mate
  doc: If specified then only the mate reads from the input list '--list' are extracted.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --mate
- id: buffer_size
  doc: The size of the buffer used for keeping the list of reads ids (given by --list).
    Default is 2000000000.
  type: string
  inputBinding:
    prefix: --buffer-size
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_short_reads.py
