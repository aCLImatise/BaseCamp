class: CommandLineTool
id: subread_buildindex.cwl
inputs:
- id: in_base_name_index
  doc: base name of the index to be created
  type: string
  inputBinding:
    prefix: -o
- id: in_build_full_index
  doc: "build a full index for the reference genome. 16bp subreads\nwill be extracted\
    \ from every position of the reference\ngenome. Size of the index is typically\
    \ 3 times the size of\nindex built from using the default setting."
  type: boolean
  inputBinding:
    prefix: -F
- id: in_create_one_block
  doc: "create one block of index. The built index will not be split\ninto multiple\
    \ pieces. This makes the largest amount of\nmemory be requested when running alignments,\
    \ but it enables\nthe maximum mapping speed to be achieved. This option\noverrides\
    \ -M when it is provided as well."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_size_requested_memoryram
  doc: size of requested memory(RAM) in megabytes, 8000 by default.
  type: long
  inputBinding:
    prefix: -M
- id: in_specify_threshold_removing
  doc: "specify the threshold for removing uninformative subreads\n(highly repetitive\
    \ 16mers in the reference). 100 by default."
  type: long
  inputBinding:
    prefix: -f
- id: in_build_colorspace_index
  doc: build a color-space index.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_output_version_program
  doc: output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- subread-buildindex
