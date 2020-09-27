class: CommandLineTool
id: mdoc_export_html.cwl
inputs:
- id: in_default_template
  doc: Writes the default XSLT to stdout.
  type: boolean
  inputBinding:
    prefix: --default-template
- id: in_ext
  doc: "The file EXTENSION to use for created files.  This\ndefaults to \"html\"."
  type: File
  inputBinding:
    prefix: --ext
- id: in_force_update
  doc: "Always generate new files.  If not specified, will\nonly generate a new file\
    \ if the source .xml file\nis newer than the current output file."
  type: File
  inputBinding:
    prefix: --force-update
- id: in_out
  doc: The DIRECTORY to place the generated files and
  type: Directory
  inputBinding:
    prefix: --out
- id: in_default_template_dot
  doc: "--with-profile=PROFILE The .NET PROFILE to generate documentation for.\nThis\
    \ is equivalent to using --with-version for\nall of the versions that a profile\
    \ uses.  Valid\nprofiles are:\nmonotouch\nnet_1_0\nnet_1_1\nnet_2_0\nnet_3_0\n\
    net_3_5\nnet_4_0\nsilverlight\n--with-version=VERSION The assembly VERSION to\
    \ generate documentation for.\nThis allows display of a subset of types/\nmembers\
    \ that correspond to the given assembly\nversion.  May be specified multiple times.\
    \  If\nnot specified, all versions are displayed."
  type: boolean
  inputBinding:
    prefix: --default-template.
- id: in_directories_dot
  doc: --template=FILE        An XSLT FILE to use to generate the created files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_update
  doc: "Always generate new files.  If not specified, will\nonly generate a new file\
    \ if the source .xml file\nis newer than the current output file."
  type: File
  outputBinding:
    glob: $(inputs.in_force_update)
cwlVersion: v1.1
baseCommand:
- mdoc-export-html
