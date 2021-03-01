class: CommandLineTool
id: capCpair2bg.cwl
inputs:
- id: in_pairfile_input_file
  doc: "pairfile       is the input file name; can use this option more\nthan once\
    \ to combine multiple targets into one"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_bgfile_file_name
  doc: bgfile         is the file name for the output bedGraph
  type: File?
  inputBinding:
    prefix: -o
- id: in_targetname_name_target
  doc: targetname     is the name of the target
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_genomic_location_target
  doc: "chrom:start-end  is the genomic location of the target site; can\nuse this\
    \ option more than once if multiple pair\nfiles are specified."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_inter_chrom
  doc: flag to specify interchromosomal interactions are present
  type: boolean?
  inputBinding:
    prefix: --interchrom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bgfile_file_name
  doc: bgfile         is the file name for the output bedGraph
  type: File?
  outputBinding:
    glob: $(inputs.in_bgfile_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- capCpair2bg
