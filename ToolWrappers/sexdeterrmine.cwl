class: CommandLineTool
id: sexdeterrmine.cwl
inputs:
- id: in_input
  doc: "The input samtools depth file. Omit to read from\nstdin."
  type: File
  inputBinding:
    prefix: --Input
- id: in_sample_list
  doc: "A list of samples/bams that were in the depth file.\nOne per line. Should\
    \ be in the order of the samtools\ndepth output."
  type: File
  inputBinding:
    prefix: --SampleList
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample_list
  doc: "A list of samples/bams that were in the depth file.\nOne per line. Should\
    \ be in the order of the samtools\ndepth output."
  type: File
  outputBinding:
    glob: $(inputs.in_sample_list)
cwlVersion: v1.1
baseCommand:
- sexdeterrmine
