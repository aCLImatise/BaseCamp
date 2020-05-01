#!/usr/bin/env cwl-runner

baseCommand:
- IDRipper
class: CommandLineTool
cwlVersion: v1.0
id: idripper
inputs:
- doc: "*        Input file, in which the protein/peptide identifications must be\
    \ tagged with 'file_origin' (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "The path to this file is used as the output directory. (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Directory for the output files after ripping according to 'file_origin'. If
    'out_path' is set, 'out' is ignored.
  id: out_path
  inputBinding:
    prefix: -out_path
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
