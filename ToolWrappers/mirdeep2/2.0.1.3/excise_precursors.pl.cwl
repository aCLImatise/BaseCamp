class: CommandLineTool
id: excise_precursors.pl.cwl
inputs:
- id: in_only_excise_is
  doc: "Only excise if the potential mature microRNA is represented\nby a number of\
    \ reads equal to or higher than the integer\n(default 2)."
  type: long?
  inputBinding:
    prefix: -a
- id: in_output_progress_screen
  doc: Output progress to screen
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- excise_precursors.pl
