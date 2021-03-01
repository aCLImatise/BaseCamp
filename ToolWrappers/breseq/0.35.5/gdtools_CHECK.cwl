class: CommandLineTool
id: gdtools_CHECK.cwl
inputs:
- id: in_output
  doc: output GD file (DEFAULT=comp.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: file containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_evidence
  doc: compare evidence
  type: boolean?
  inputBinding:
    prefix: --evidence
- id: in_jc_buffer
  doc: when comparing JC evidence, length of sequence segment to compare for JC evidence
    (DEFAULT=50)
  type: long?
  inputBinding:
    prefix: --jc-buffer
- id: in_jc_shorten
  doc: when comparing JC evidence, length to shorten control segments by when comparing
    JC evidence for overlap (DEFAULT=5)
  type: long?
  inputBinding:
    prefix: --jc-shorten
- id: in_jc_only_accepted
  doc: when comparing JC evidence, do not score/count rejected items
  type: boolean?
  inputBinding:
    prefix: --jc-only-accepted
- id: in_plot_jc
  doc: plot JC Precision versus Score, argument is a prefix for the file paths
  type: File?
  inputBinding:
    prefix: --plot-jc
- id: in_verbose
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output GD file (DEFAULT=comp.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- CHECK
