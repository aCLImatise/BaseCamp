class: CommandLineTool
id: gdtools_MUMMER2MASK.cwl
inputs:
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: Output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_padding
  doc: Additional padding to add to each end of every MASK region. (DEFAULT=0)
  type: long?
  inputBinding:
    prefix: --padding
- id: in_merge
  doc: Merge regions if they are within this distance (before adding padding). (DEFAULT=0)
  type: long?
  inputBinding:
    prefix: --merge
- id: in_minimum
  doc: Minimum size of a region after padding and merging to remain in the MASK list.
    (DEFAULT=0)
  type: long?
  inputBinding:
    prefix: --minimum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- MUMMER2MASK
