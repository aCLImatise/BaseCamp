class: CommandLineTool
id: trim_poly_tails.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing all the trimmed sequences.
  type: string
  inputBinding:
    prefix: --output
- id: repeats
  doc: The number of times a nucleotide specified with '-- nucleotide' should be repeated
    in order to be considered a poly Default is 9.
  type: string
  inputBinding:
    prefix: --repeats
- id: skip_reads
  doc: If this is specified then the reads which are having poly tails are filtered
    out (i.e. not written to the output) instead of trimming. Default is False.
  type: boolean
  inputBinding:
    prefix: --skip_reads
- id: keep_too_short
  doc: If this is specified then the reads which are less than N bp will be kept,
    where N is set using '--keep- too-short-length'. Default is False.
  type: boolean
  inputBinding:
    prefix: --keep-too-short
- id: keep_too_short_length
  doc: The threshold used to decide when a read is too short. Default is 20.
  type: string
  inputBinding:
    prefix: --keep-too-short-length
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_poly_tails.py
