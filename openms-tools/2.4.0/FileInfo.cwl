#!/usr/bin/env cwl-runner

baseCommand:
- FileInfo
class: CommandLineTool
cwlVersion: v1.0
id: fileinfo
inputs:
- doc: "*        Input file  (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d',\
    \ 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML',\
    \ 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'idXML', 'pepXML', 'fid', 'mzid ', 'trafoXML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "Optional output file. If left out, the output is written to the command line.\
    \ (valid formats: 'txt')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Show meta information about the whole experiment
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Shows data processing information
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Computes a five-number statistics of intensities, qualities, and widths
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Show detailed listing of all spectra and chromatograms (peak files only)
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Check for corrupt data in the file (peak files only)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Validate the file only (for mzML, mzData, mzXML, featureXML, idXML, consensusXML,
    pepXML)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Check whether a given mzML file contains valid indices (conforming to the indexedmzML
    standard)
  id: i
  inputBinding:
    prefix: -i
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
