#!/usr/bin/env cwl-runner

baseCommand:
- QCImporter
class: CommandLineTool
cwlVersion: v1.0
id: qcimporter
inputs:
- doc: "Input qcml file (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*     The table containing the additional qp values in the columns. First\
    \ row is considered containing the header. The target run or set names/ids are\
    \ indicated by column \"raw data file\", so each row after the header will contain\
    \ the values of qps for that run. (csv without \"!) (valid formats: 'csv')"
  id: table
  inputBinding:
    prefix: -table
  type: File
- doc: "*   The mapping of the table header to the according qp cvs, also in csv format.\
    \ The first row is considered containing the headers as in the table. The second\
    \ row is considered the according  qp cv accessions. (csv without \"!) (valid\
    \ formats: 'csv')"
  id: mapping
  inputBinding:
    prefix: -mapping
  type: File
- doc: "*       Output extended qcML file (valid formats: 'qcML')"
  id: out
  inputBinding:
    prefix: -out
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
