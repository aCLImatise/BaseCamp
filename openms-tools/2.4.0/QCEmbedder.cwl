#!/usr/bin/env cwl-runner

baseCommand:
- QCEmbedder
class: CommandLineTool
cwlVersion: v1.0
id: qcembedder
inputs:
- doc: "Input qcml file (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Defines the qp cv accession of the qp to which the table/image is attached.
  id: qp_att_acc
  inputBinding:
    prefix: -qp_att_acc
  type: string
- doc: '*     Defines the cv accession of the attachment.'
  id: cv_acc
  inputBinding:
    prefix: -cv_acc
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
- doc: "If a plot image is to be attached to a qp, this has to be specified here.\
    \ (valid formats: 'PNG')"
  id: plot
  inputBinding:
    prefix: -plot
  type: File
- doc: "If a table is to be attached to a qp, this has to be specified here. (valid\
    \ formats: 'csv')"
  id: table
  inputBinding:
    prefix: -table
  type: File
- doc: "*          Output extended qcML file (valid formats: 'qcML')"
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
