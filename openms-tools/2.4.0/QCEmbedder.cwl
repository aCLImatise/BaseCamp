class: CommandLineTool
id: QCEmbedder.cwl
inputs:
- id: in
  doc: "Input qcml file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -in
- id: qp_att_acc
  doc: Defines the qp cv accession of the qp to which the table/image is attached.
  type: string
  inputBinding:
    prefix: -qp_att_acc
- id: cv_acc
  doc: '*     Defines the cv accession of the attachment.'
  type: string
  inputBinding:
    prefix: -cv_acc
- id: run
  doc: "The file that defined the run under which the qp for the attachment is aggregated\
    \ as mzML file. The file is only used to extract the run name from the file name.\
    \ (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -run
- id: name
  doc: If no file for the run was given (or if the target qp is contained in a set),
    at least a name of the target run/set containing the the qp for the attachment
    has to be given.
  type: string
  inputBinding:
    prefix: -name
- id: plot
  doc: "If a plot image is to be attached to a qp, this has to be specified here.\
    \ (valid formats: 'PNG')"
  type: File
  inputBinding:
    prefix: -plot
- id: table
  doc: "If a table is to be attached to a qp, this has to be specified here. (valid\
    \ formats: 'csv')"
  type: File
  inputBinding:
    prefix: -table
- id: out
  doc: "*          Output extended qcML file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -out
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- QCEmbedder
