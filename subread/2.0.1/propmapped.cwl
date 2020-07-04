class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/propmapped.cwl
inputs:
- id: input_file_containing
  doc: An input file containing read mapping results. Both SAM or BAM formats are
    supported.
  type: string
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of output file including mapping statistics.
  type: string
  inputBinding:
    prefix: -o
- id: specified_fragments_read
  doc: If specified, fragments (read pairs) will be counted instead of individual
    reads. This option is only applicable for paired-end reads.
  type: boolean
  inputBinding:
    prefix: -f
- id: specified_only_properly
  doc: If specified, only properly paired reads will be counted. This option is only
    applicable for paired-end reads.
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- propmapped
