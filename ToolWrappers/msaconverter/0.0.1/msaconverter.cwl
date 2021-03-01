class: CommandLineTool
id: msaconverter.cwl
inputs:
- id: in_input_msa_file
  doc: input msa file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_msa_file
  doc: output msa file
  type: File?
  inputBinding:
    prefix: -o
- id: in_p
  doc: input msa format [fasta]
  type: string?
  inputBinding:
    prefix: -p
- id: in_q
  doc: "input msa format [phylip-relaxed]\n"
  type: string?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_msa_file
  doc: output msa file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_msa_file)
hints: []
cwlVersion: v1.1
baseCommand:
- msaconverter
