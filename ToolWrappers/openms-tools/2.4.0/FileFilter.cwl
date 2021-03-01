class: CommandLineTool
id: FileFilter.cwl
inputs:
- id: in_in
  doc: "*                                                  Input file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "*                                                 Output file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_rt
  doc: "[min]:[max]                                              Retention time range\
    \ to extract (default: ':')"
  type: boolean?
  inputBinding:
    prefix: -rt
- id: in_mz
  doc: "[min]:[max]                                              M/z range to extract\
    \ (applies to ALL ms levels!) (default: ':')"
  type: boolean?
  inputBinding:
    prefix: -mz
- id: in_int
  doc: "[min]:[max]                                             Intensity range to\
    \ extract (default: ':')"
  type: boolean?
  inputBinding:
    prefix: -int
- id: in_sort
  doc: Sorts the output according to RT and m/z.
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_feature
  doc: ":q [min]:[max]                                       Overall quality range\
    \ to extract [0:1] (default: ':')"
  type: boolean?
  inputBinding:
    prefix: -feature
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                                                 Output file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints: []
cwlVersion: v1.1
baseCommand:
- FileFilter
