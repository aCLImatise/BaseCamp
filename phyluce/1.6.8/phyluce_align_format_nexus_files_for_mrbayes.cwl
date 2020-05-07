class: CommandLineTool
id: phyluce_align_format_nexus_files_for_mrbayes.cwl
inputs:
- id: alignments
  doc: The path to the alignments directory
  type: string
  inputBinding:
    prefix: --alignments
- id: models
  doc: The path to the model configuration file
  type: string
  inputBinding:
    prefix: --models
- id: output
  doc: The path to the output file
  type: string
  inputBinding:
    prefix: --output
- id: fully_partition
  doc: Fully partition the output
  type: boolean
  inputBinding:
    prefix: --fully-partition
- id: interleave
  doc: Interleave sequence in nexus files
  type: boolean
  inputBinding:
    prefix: --interleave
- id: unlink
  doc: Unlink the models
  type: boolean
  inputBinding:
    prefix: --unlink
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_nexus_files_for_mrbayes
