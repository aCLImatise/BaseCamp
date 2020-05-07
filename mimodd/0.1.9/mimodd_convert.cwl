class: CommandLineTool
id: mimodd_convert.cwl
inputs:
- id: i_format
  doc: 'the format of the input file(s) (default: bam)'
  type: string
  inputBinding:
    prefix: --iformat
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: o_format
  doc: 'the output format (default: sam)'
  type: string
  inputBinding:
    prefix: --oformat
- id: header
  doc: optional SAM file, the header information of which should be used in the output
    (will overwrite pre- existing header information from the input file); not allowed
    for input in SAM/BAM format
  type: string
  inputBinding:
    prefix: --header
- id: split_on_rgs
  doc: if the input file has reads from different read groups, write them to separate
    output files (using --ofile OFILE as a file name template); implied for conversions
    to fastq format
  type: boolean
  inputBinding:
    prefix: --split-on-rgs
- id: threads
  doc: the number of threads to use (overrides config setting; ignored if not applicable
    to the conversion)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- convert
