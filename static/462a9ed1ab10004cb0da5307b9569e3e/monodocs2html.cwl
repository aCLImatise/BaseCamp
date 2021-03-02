class: CommandLineTool
id: monodocs2html.cwl
inputs:
- id: in_default_template
  doc: Writes the default XSLT to stdout.
  type: boolean?
  inputBinding:
    prefix: --default-template
- id: in_ext
  doc: "The file EXTENSION to use for created files.  This\ndefaults to \"html\"."
  type: File?
  inputBinding:
    prefix: --ext
- id: in_force_update
  doc: "Always generate new files.  If not specified, will\nonly generate a new file\
    \ if the source .xml file\nis newer than the current output file."
  type: File?
  inputBinding:
    prefix: --force-update
- id: in_out
  doc: The DIRECTORY to place the generated files and
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_default_template_dot
  doc: The .NET PROFILE to generate documentation for.
  type: string?
  inputBinding:
    prefix: --default-template.
- id: in_with_version
  doc: "The assembly VERSION to generate documentation for.\nThis allows display of\
    \ a subset of types/\nmembers that correspond to the given assembly\nversion.\
    \  May be specified multiple times.  If\nnot specified, all versions are displayed."
  type: string?
  inputBinding:
    prefix: --with-version
- id: in_directories_dot
  doc: --template=FILE        An XSLT FILE to use to generate the created files.
  type: string
  inputBinding:
    position: 0
- id: in_mono_touch
  doc: net_1_0
  type: string
  inputBinding:
    position: 0
- id: in_net_one_one
  doc: net_2_0
  type: long
  inputBinding:
    position: 1
- id: in_net_three_zero
  doc: net_3_5
  type: long
  inputBinding:
    position: 2
- id: in_net_four_zero
  doc: silverlight
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_update
  doc: "Always generate new files.  If not specified, will\nonly generate a new file\
    \ if the source .xml file\nis newer than the current output file."
  type: File?
  outputBinding:
    glob: $(inputs.in_force_update)
hints: []
cwlVersion: v1.1
baseCommand:
- monodocs2html
