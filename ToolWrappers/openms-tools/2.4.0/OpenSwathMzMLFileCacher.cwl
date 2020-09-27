class: CommandLineTool
id: OpenSwathMzMLFileCacher.cwl
inputs:
- id: in_in
  doc: "*                Input mzML file (valid formats: 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content\n(valid:\
    \ 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "*               Output file (valid formats: 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content\nNote:\
    \ that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -out_type
- id: in_convert_back
  doc: Convert back to mzML
  type: boolean
  inputBinding:
    prefix: -convert_back
- id: in_lossy_compression
  doc: "Use numpress compression to achieve optimally small file size (attention:\
    \ may cause small loss of precision; only for mzML data). (default: 'true' valid:\
    \ 'true', 'false')"
  type: long
  inputBinding:
    prefix: -lossy_compression
- id: in_full_meta
  doc: "Write full meta information into sqMass file (may require large amounts of\
    \ memory) (default: 'true' valid: 'true', 'false')"
  type: File
  inputBinding:
    prefix: -full_meta
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*               Output file (valid formats: 'mzML', 'sqMass')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content\nNote:\
    \ that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_type)
cwlVersion: v1.1
baseCommand:
- OpenSwathMzMLFileCacher
