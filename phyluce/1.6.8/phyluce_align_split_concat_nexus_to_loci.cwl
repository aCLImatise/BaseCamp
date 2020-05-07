class: CommandLineTool
id: phyluce_align_split_concat_nexus_to_loci.cwl
inputs:
- id: nexus
  doc: The input NEXUS file
  type: string
  inputBinding:
    prefix: --nexus
- id: output
  doc: The output directory in which to store alignments
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_split_concat_nexus_to_loci
