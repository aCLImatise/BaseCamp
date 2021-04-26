class: CommandLineTool
id: agat_convert_mfannot2gff.pl.cwl
inputs:
- id: in_m_fan_not
  doc: The mfannot input file
  type: File?
  inputBinding:
    prefix: --mfannot
- id: in_gff
  doc: the gff output file
  type: File?
  inputBinding:
    prefix: --gff
- id: in_gaas_convert_mfannottwogffdotpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gff
  doc: the gff output file
  type: File?
  outputBinding:
    glob: $(inputs.in_gff)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_convert_mfannot2gff.pl
