#!/usr/bin/env cwl-runner

baseCommand:
- PSMFeatureExtractor
class: CommandLineTool
cwlVersion: v1.0
id: psmfeatureextractor
inputs:
- doc: "*                 Input file(s) (valid formats: 'mzid', 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                 Output file in mzid or idXML format (valid formats: 'mzid',\
    \ 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'mzid', 'idXML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: List of the MetaData parameters to be included in a feature set for precolator.
  id: extra
  inputBinding:
    prefix: -extra
  type: string
- doc: Combine PSMs from different search engines by merging on scan level.
  id: multiple_search_engines
  inputBinding:
    prefix: -multiple_search_engines
  type: boolean
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
