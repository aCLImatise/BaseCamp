class: CommandLineTool
id: FileInfo.cwl
inputs:
- id: in
  doc: "*        Input file  (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d',\
    \ 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML',\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'idXML', 'pepXML', 'fid', 'mzid ', 'trafoXML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "Optional output file. If left out, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: m
  doc: Show meta information about the whole experiment
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: Shows data processing information
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: Computes a five-number statistics of intensities, qualities, and widths
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: Show detailed listing of all spectra and chromatograms (peak files only)
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: Check for corrupt data in the file (peak files only)
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: Validate the file only (for mzML, mzData, mzXML, featureXML, idXML, consensusXML,
    pepXML)
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: Check whether a given mzML file contains valid indices (conforming to the indexedmzML
    standard)
  type: boolean
  inputBinding:
    prefix: -i
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
- FileInfo
