class: CommandLineTool
id: EICExtractor.cwl
inputs:
- id: in_in
  doc: "*        Input raw data file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_header
  doc: "[for Waters data only] Read additional information from _HEADER.TXT. Provide\
    \ one for each raw input file. (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -in_header
- id: in_pos
  doc: "*       Input config file stating where to find signal (valid formats: 'edta')"
  type: File?
  inputBinding:
    prefix: -pos
- id: in_rt_to_l
  doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '3.0')"
  type: boolean?
  inputBinding:
    prefix: -rt_tol
- id: in_mz_to_l
  doc: "M/z tolerance in [ppm] for finding a peak (default: '10.0')"
  type: boolean?
  inputBinding:
    prefix: -mz_tol
- id: in_rt_collect
  doc: "# of scans up & down in RT from highest point for ppm estimation in result\
    \ (default: '1')"
  type: boolean?
  inputBinding:
    prefix: -rt_collect
- id: in_auto_rt
  doc: :enabled   Automatically detect injection peaks from TIC and quantify all m/z
    x RT combinations.
  type: boolean?
  inputBinding:
    prefix: -auto_rt
- id: in_out
  doc: "*       Output quantitation file (multiple columns for each input compound)\
    \ (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out
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
hints: []
cwlVersion: v1.1
baseCommand:
- EICExtractor
