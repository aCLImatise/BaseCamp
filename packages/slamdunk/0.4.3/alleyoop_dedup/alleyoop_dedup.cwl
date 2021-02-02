class: CommandLineTool
id: ../../../alleyoop_dedup.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_tc_mutations
  doc: "Only select reads with x number of T>C mutations.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --tcMutations
- id: in_threads
  doc: "Thread number (default: 1)\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- alleyoop
- dedup
