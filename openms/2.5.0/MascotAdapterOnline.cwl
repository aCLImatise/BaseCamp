#!/usr/bin/env cwl-runner

baseCommand:
- MascotAdapterOnline
class: CommandLineTool
cwlVersion: v1.0
id: mascotadapteronline
inputs:
- doc: "*        Input file in mzML format. (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file in idXML format. (valid formats: 'idXML')"
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
- doc: Mascot parameters used for searching
  id: mascot_parameters
  inputBinding:
    prefix: '- Mascot_parameters'
  type: boolean
- doc: Mascot server details
  id: mascot_server
  inputBinding:
    prefix: '- Mascot_server'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_MascotAdapterOnline.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
