class: CommandLineTool
id: phyluce_align_format_nexus_files_for_mrbayes.cwl
inputs:
- id: in_output
  doc: "[--fully-partition]\n[--interleave] [--unlink]"
  type: string
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: The path to the alignments directory
  type: File
  inputBinding:
    prefix: --alignments
- id: in_models
  doc: The path to the model configuration file
  type: File
  inputBinding:
    prefix: --models
- id: in_fully_partition
  doc: Fully partition the output
  type: boolean
  inputBinding:
    prefix: --fully-partition
- id: in_interleave
  doc: Interleave sequence in nexus files
  type: boolean
  inputBinding:
    prefix: --interleave
- id: in_unlink
  doc: Unlink the models
  type: boolean
  inputBinding:
    prefix: --unlink
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_nexus_files_for_mrbayes
