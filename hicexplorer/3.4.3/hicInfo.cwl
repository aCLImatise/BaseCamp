#!/usr/bin/env cwl-runner

baseCommand:
- hicInfo
class: CommandLineTool
cwlVersion: v1.0
id: hicinfo
inputs:
- doc: 'The matrix (or multiple matrices) to get information about. HiCExplorer supports
    the following file formats: h5 (native HiCExplorer format) and cool.'
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: File name to save information of the matrix instead of writing it to the bash.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Do not use meta data from cooler file to display information. This method is
    slower and was the default until version 2.2 of HiCExplorer. H5 files always use
    this parameter.
  id: no_metadata
  inputBinding:
    prefix: --no_metadata
  type: boolean
