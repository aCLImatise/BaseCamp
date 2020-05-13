class: CommandLineTool
id: EICExtractor.cwl
inputs:
- id: in
  doc: "*        Input raw data file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_header
  doc: "[for Waters data only] Read additional information from _HEADER.TXT. Provide\
    \ one for each raw input file. (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in_header
- id: pos
  doc: "*       Input config file stating where to find signal (valid formats: 'edta')"
  type: File
  inputBinding:
    prefix: -pos
- id: rt_to_l
  doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '3.0')"
  type: boolean
  inputBinding:
    prefix: -rt_tol
- id: mz_to_l
  doc: "M/z tolerance in [ppm] for finding a peak (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -mz_tol
- id: rt_collect
  doc: "# of scans up & down in RT from highest point for ppm estimation in result\
    \ (default: '1')"
  type: boolean
  inputBinding:
    prefix: -rt_collect
- id: auto_rt
  doc: :enabled   Automatically detect injection peaks from TIC and quantify all m/z
    x RT combinations.
  type: boolean
  inputBinding:
    prefix: -auto_rt
- id: out
  doc: "*       Output quantitation file (multiple columns for each input compound)\
    \ (valid formats: 'csv')"
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
- EICExtractor
