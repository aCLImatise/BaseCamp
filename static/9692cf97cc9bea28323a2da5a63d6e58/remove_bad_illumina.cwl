class: CommandLineTool
id: remove_bad_illumina.py.cwl
inputs:
- id: input
  doc: The input file (in the newer Solexa FASTQ format, i.e. version 1.8 or newer)
    containing the short reads to be processed.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing the short reads which are marked as good by
    Illumina.
  type: string
  inputBinding:
    prefix: --output
- id: link
  doc: It creates a link from the output file to the input file of type (soft,hard,copy)
    in case that no operation is done on the input file. Default is 'soft'.
  type: string
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-bad-illumina.py
