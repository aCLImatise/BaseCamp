class: CommandLineTool
id: obabel.cwl
inputs:
- id: in_start_import_specified
  doc: '<#> Start import at molecule # specified'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_end_import_molecule
  doc: '<#> End import at molecule # specified'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_next_object_error
  doc: with next object after error, if possible
  type: string?
  inputBinding:
    prefix: -e
- id: in_the_output_gzip
  doc: the output with gzip
  type: string?
  inputBinding:
    prefix: -z
- id: in_z_in
  doc: the input with gzip
  type: string?
  inputBinding:
    prefix: -zin
- id: in_to_translate_keywords
  doc: to translate keywords
  type: string?
  inputBinding:
    prefix: -k
- id: in_this_help_text
  doc: this help text
  type: string?
  inputBinding:
    prefix: -H
- id: in_h_xxx
  doc: (xxx is file format ID e.g. -Hcml) gives format info
  type: boolean?
  inputBinding:
    prefix: -Hxxx
- id: in_hall
  doc: details of all formats
  type: string?
  inputBinding:
    prefix: -Hall
- id: in_version_number
  doc: version number
  type: long?
  inputBinding:
    prefix: -V
- id: in_lists_plugin_classes
  doc: "Lists plugin classes of this category, e.g. <formats>\nUse just -L for a list\
    \ of plugin categories.\nUse -L <ID> e.g. -L sdf for details of a format or other\
    \ plugin."
  type: string?
  inputBinding:
    prefix: -L
- id: in_multiple_output_files
  doc: "multiple output files, to allow:\nSplitting: e.g.        obabel infile.mol\
    \ -O new.smi -m\nputs each molecule into new1.smi new2.smi etc\nBatch conversion:\
    \ e.g. obabel *.mol -osmi -m\nconverts each input file to a .smi file"
  type: File?
  inputBinding:
    prefix: -m
- id: in_var_12
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_var_13
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_type
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_in_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_type
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_out_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obabel
