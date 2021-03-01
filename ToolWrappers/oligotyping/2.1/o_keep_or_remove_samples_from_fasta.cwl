class: CommandLineTool
id: o_keep_or_remove_samples_from_fasta.cwl
inputs:
- id: in_retain
  doc: "If declared, resulting FASTA file would contain\nsamples that \"match\" sample\
    \ names listed in the\n\"samples\" file. The default behavior is the vice\nversa."
  type: boolean?
  inputBinding:
    prefix: --retain
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_fast_a_file_path
  doc: FASTA file to remove or retain samples from
  type: string
  inputBinding:
    position: 0
- id: in_samples_file_path
  doc: File that contains a sample name for each line
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- o-keep-or-remove-samples-from-fasta
