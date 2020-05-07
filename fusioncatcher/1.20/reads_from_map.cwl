class: CommandLineTool
id: reads_from_map.py.cwl
inputs:
- id: input_reads
  doc: The input file containing the list of reads names to be removed from the MAP
    BOWTIE file.
  type: string
  inputBinding:
    prefix: --input_reads
- id: input_map
  doc: The input file in Bowtie MAP format from where the reads will be removed.
  type: string
  inputBinding:
    prefix: --input_map
- id: output_map
  doc: The output text file containing all reads from the input MAP BOWTIE file except
    the ones which have been removed.
  type: string
  inputBinding:
    prefix: --output_map
- id: operation
  doc: Type of operation to be performed. The choices are ['remove','extract']. Default
    is 'remove'.
  type: string
  inputBinding:
    prefix: --operation
outputs: []
cwlVersion: v1.1
baseCommand:
- reads_from_map.py
