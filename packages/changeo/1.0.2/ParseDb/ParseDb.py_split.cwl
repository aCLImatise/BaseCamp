class: CommandLineTool
id: ParseDb.py_split.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_annotation_field_split
  doc: "Annotation field by which to split database files.\n(default: None)"
  type: string?
  inputBinding:
    prefix: -f
- id: in_num
  doc: "Specify to define the field as numeric and group\nrecords by whether they\
    \ are less than or at least\n(greater than or equal to) the specified value.\n\
    (default: None)\n"
  type: long?
  inputBinding:
    prefix: --num
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/changeo:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- split
