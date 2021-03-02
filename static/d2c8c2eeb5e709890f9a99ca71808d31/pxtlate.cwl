class: CommandLineTool
id: pxtlate.cwl
inputs:
- id: in_seq_f
  doc: input nucleotide sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_table
  doc: "which translation table to use. currently available:\n'std' (standard, default)\n\
    'vmt' (vertebrate mtDNA)\n'ivmt' (invertebrate mtDNA)\n'ymt' (yeast mtDNA)"
  type: string?
  inputBinding:
    prefix: --table
- id: in_out_f
  doc: output aa sequence file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output aa sequence file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxtlate
