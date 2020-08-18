class: CommandLineTool
id: ../../../FileFilter.cwl
inputs:
- id: in
  doc: "*                                                  Input file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*                                                 Output file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -out_type
- id: rt
  doc: "[min]:[max]                                              Retention time range\
    \ to extract (default: ':')"
  type: boolean
  inputBinding:
    prefix: -rt
- id: mz
  doc: "[min]:[max]                                              M/z range to extract\
    \ (applies to ALL ms levels!) (default: ':')"
  type: boolean
  inputBinding:
    prefix: -mz
- id: int
  doc: "[min]:[max]                                             Intensity range to\
    \ extract (default: ':')"
  type: boolean
  inputBinding:
    prefix: -int
- id: sort
  doc: Sorts the output according to RT and m/z.
  type: boolean
  inputBinding:
    prefix: -sort
- id: feature
  doc: ":q [min]:[max]                                       Overall quality range\
    \ to extract [0:1] (default: ':')"
  type: boolean
  inputBinding:
    prefix: -feature
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
- FileFilter
