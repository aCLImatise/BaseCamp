#!/usr/bin/env cwl-runner

baseCommand:
- QCExporter
class: CommandLineTool
cwlVersion: v1.0
id: qcexporter
inputs:
- doc: "*        Input qcml file (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: The name of the target runs or sets to be exported from. If empty, from all
    will be exported.
  id: names
  inputBinding:
    prefix: -names
  type: string
- doc: "*   The mapping of the exported table's headers to the according qp cvs. The\
    \ first row is considered containing the headers as for the exported the table.\
    \ The second row is considered the accor ding qp cv accessions of the qp to be\
    \ exported. (valid formats: 'csv')"
  id: mapping
  inputBinding:
    prefix: -mapping
  type: File
- doc: "*   Output csv formatted quality parameter. (valid formats: 'csv')"
  id: out_csv
  inputBinding:
    prefix: -out_csv
  type: File
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
