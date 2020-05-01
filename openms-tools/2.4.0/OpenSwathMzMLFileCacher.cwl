#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathMzMLFileCacher
class: CommandLineTool
cwlVersion: v1.0
id: openswathmzmlfilecacher
inputs:
- doc: "*                Input mzML file (valid formats: 'mzML', 'sqMass')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'sqMass')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*               Output file (valid formats: 'mzML', 'sqMass')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content Note:\
    \ that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: Convert back to mzML
  id: convert_back
  inputBinding:
    prefix: -convert_back
  type: boolean
- doc: "Use numpress compression to achieve optimally small file size (attention:\
    \ may cause small loss of precision; only for mzML data). (default: 'true' valid:\
    \ 'true', 'false')"
  id: lossy_compression
  inputBinding:
    prefix: -lossy_compression
  type: string
- doc: "Write full meta information into sqMass file (may require large amounts of\
    \ memory) (default: 'true' valid: 'true', 'false')"
  id: full_meta
  inputBinding:
    prefix: -full_meta
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
