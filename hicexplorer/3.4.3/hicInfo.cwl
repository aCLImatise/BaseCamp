class: CommandLineTool
id: hicInfo.cwl
inputs:
- id: matrices
  doc: 'The matrix (or multiple matrices) to get information about. HiCExplorer supports
    the following file formats: h5 (native HiCExplorer format) and cool.'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: out_filename
  doc: File name to save information of the matrix instead of writing it to the bash.
  type: string
  inputBinding:
    prefix: --outFileName
- id: no_metadata
  doc: Do not use meta data from cooler file to display information. This method is
    slower and was the default until version 2.2 of HiCExplorer. H5 files always use
    this parameter.
  type: boolean
  inputBinding:
    prefix: --no_metadata
outputs: []
cwlVersion: v1.1
baseCommand:
- hicInfo
