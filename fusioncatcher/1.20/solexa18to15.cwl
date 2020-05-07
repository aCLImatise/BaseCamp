class: CommandLineTool
id: solexa18to15.py.cwl
inputs:
- id: input
  doc: The input file (in the newer Solexa FASTQ format, i.e. version 1.8 or newer)
    containing the short reads to be processed.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing the short read such that the read names are
    changed in such way that they end with /1 or /2. If the input file contains reads
    which end in /1 or /2 then the reads will be copied to the output without any
    modification
  type: string
  inputBinding:
    prefix: --output
- id: skip_filter
  doc: It filters out the reads which have been marked by Illumina as filtered. Default
    is False.
  type: boolean
  inputBinding:
    prefix: --skip_filter
- id: fail
  doc: In case that the short reads names do not end with /1 or /2 or are not in format
    '@GQWE8:57:C00T6ABXX:2:1101:1233:2230 1:N:0:CTTGTA' then the script will exit
    with an exit error code. Default is False.
  type: boolean
  inputBinding:
    prefix: --fail
- id: link
  doc: It creates a link from the output file to the input file of type (soft,hard,copy)
    in case that no operation is done on the input file. Default is 'soft'.
  type: string
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- solexa18to15.py
