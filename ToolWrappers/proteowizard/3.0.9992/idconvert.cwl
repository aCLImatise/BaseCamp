class: CommandLineTool
id: idconvert.cwl
inputs:
- id: in_arg_specify_file
  doc: '[ --filelist ] arg    : specify text file containing filenames'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_configuration_file
  doc: '[ --config ] arg      : configuration file (optionName=value)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_e
  doc: '[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_mz_ident_ml
  doc: ': write mzIdentML format [default]'
  type: boolean?
  inputBinding:
    prefix: --mzIdentML
- id: in_pep_xml
  doc: ': write pepXML format'
  type: boolean?
  inputBinding:
    prefix: --pepXML
- id: in_text
  doc: ': write hierarchical text format'
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_display_detailed_information
  doc: '[ --verbose ]         : display detailed progress information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file_masks
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- idconvert
