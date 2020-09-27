class: CommandLineTool
id: phyluce_align_split_concat_nexus_to_loci.cwl
inputs:
- id: in_nexus
  doc: The input NEXUS file
  type: File
  inputBinding:
    prefix: --nexus
- id: in_output_directory_store
  doc: The output directory in which to store alignments
  type: Directory
  inputBinding:
    prefix: --output
- id: in_split_concatenated_file
  doc: Split a concatenated NEXUS file into component loci using the charsets values
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_store
  doc: The output directory in which to store alignments
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_store)
cwlVersion: v1.1
baseCommand:
- phyluce_align_split_concat_nexus_to_loci
