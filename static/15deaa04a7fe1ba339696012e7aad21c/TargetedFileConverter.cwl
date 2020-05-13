class: CommandLineTool
id: TargetedFileConverter.cwl
inputs:
- id: in
  doc: "*        Input file to convert. See http://www.openms.de/current_doxygen/html/UTILS_TargetedFileConverter.html\
    \ for format of OpenSWATH transition TSV file or SpectraST MRM file. (valid formats:\
    \ 'tsv', 'mrm', 'pqp', 'Tra ML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*       Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content Note:\
    \ that not all conversion paths work or make sense. (valid: 'tsv', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -out_type
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- TargetedFileConverter
