class: CommandLineTool
id: ../../../h5import.cwl
inputs:
- id: in_configfileevery_input_file
  doc: "[config] <configfile>:\nEvery input file should be associated with a\nconfiguration\
    \ file and this is done by the -c option.\n<configfile> is the name of the configuration\
    \ file.\n(See Section \"CONFIGURATION FILE\")"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_outfilename_hdf_output
  doc: "[utfile] <outfile>:\nName of the HDF5 output file. Data from one or more\n\
    input files are stored as one or more data sets in\n<outfile>. The output file\
    \ may be an existing file or\nit maybe new in which case it will be created."
  type: boolean
  inputBinding:
    prefix: -o
- id: in_dimension_implies_unlimited
  doc: any dimension implies UNLIMITED
  type: long
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5import
