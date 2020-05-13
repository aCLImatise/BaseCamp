class: CommandLineTool
id: OpenSwathMzMLFileCacher.cwl
inputs:
- id: in
  doc: "*                Input mzML file (valid formats: 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'sqMass')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*               Output file (valid formats: 'mzML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content Note:\
    \ that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
  type: string
  inputBinding:
    prefix: -out_type
- id: convert_back
  doc: Convert back to mzML
  type: boolean
  inputBinding:
    prefix: -convert_back
- id: lossy_compression
  doc: "Use numpress compression to achieve optimally small file size (attention:\
    \ may cause small loss of precision; only for mzML data). (default: 'true' valid:\
    \ 'true', 'false')"
  type: string
  inputBinding:
    prefix: -lossy_compression
- id: full_meta
  doc: "Write full meta information into sqMass file (may require large amounts of\
    \ memory) (default: 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -full_meta
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
- OpenSwathMzMLFileCacher
