class: CommandLineTool
id: o_keep_or_remove_samples_from_fasta.cwl
inputs:
- id: fast_a_file_path
  doc: FASTA file to remove or retain samples from
  type: string
  inputBinding:
    position: 0
- id: samples_file_path
  doc: File that contains a sample name for each line
  type: string
  inputBinding:
    position: 1
- id: retain
  doc: If declared, resulting FASTA file would contain samples that "match" sample
    names listed in the "samples" file. The default behavior is the vice versa.
  type: boolean
  inputBinding:
    prefix: --retain
- id: output
  doc: Output file name.
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- o-keep-or-remove-samples-from-fasta
