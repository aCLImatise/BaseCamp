#!/usr/bin/env cwl-runner

baseCommand:
- TargetedFileConverter
class: CommandLineTool
cwlVersion: v1.0
id: targetedfileconverter
inputs:
- doc: "*        Input file to convert. See http://www.openms.de/current_doxygen/html/UTILS_TargetedFileConverter.html\
    \ for format of OpenSWATH transition TSV file or SpectraST MRM file. (valid formats:\
    \ 'tsv', 'mrm', 'pqp', 'Tra ML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*       Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content Note:\
    \ that not all conversion paths work or make sense. (valid: 'tsv', 'pqp', 'TraML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
