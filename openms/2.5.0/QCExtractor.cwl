#!/usr/bin/env cwl-runner

baseCommand:
- QCExtractor
class: CommandLineTool
cwlVersion: v1.0
id: qcextractor
inputs:
- doc: "*        Input qcml file (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: '*      Target attachment qp.'
  id: qp
  inputBinding:
    prefix: -qp
  type: string
- doc: "The file that defined the run under which the qp for the attachment is aggregated\
    \ as mzML file. The file is only used to extract the run name from the file name.\
    \ (valid formats: 'mzML')"
  id: run
  inputBinding:
    prefix: -run
  type: File
- doc: If no file for the run was given (or if the target qp is contained in a set),
    at least a name of the target run/set containing the the qp for the attachment
    has to be given.
  id: name
  inputBinding:
    prefix: -name
  type: string
- doc: "*   Output csv formatted table. (valid formats: 'csv')"
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
