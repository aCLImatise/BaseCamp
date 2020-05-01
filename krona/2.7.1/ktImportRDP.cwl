#!/usr/bin/env cwl-runner

baseCommand:
- ktImportRDP
class: CommandLineTool
cwlVersion: v1.0
id: ktimportrdp
inputs:
- doc: RDP assignment details downloaded as text from the RDP Classifier web portal
    or output by the command line RDP Classifier or Multiclassifier. By default, separate
    datasets will be created for each input (see [-c]).
  id: rdp_details
  inputBinding:
    position: 0
  type: string
- doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  id: name
  inputBinding:
    position: 1
  type: string
