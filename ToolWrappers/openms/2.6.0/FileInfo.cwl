class: CommandLineTool
id: FileInfo.cwl
inputs:
- id: in_in
  doc: "*        Input file  (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d',\
    \ 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML',\
    \ 'fasta', 'pqp')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML', 'fasta', 'pqp')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "Optional output file. If left out, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_show_meta_information
  doc: Show meta information about the whole experiment
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_shows_processing_information
  doc: Shows data processing information
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_computes_fivenumber_statistics
  doc: Computes a five-number statistics of intensities, qualities, and widths
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_show_detailed_listing
  doc: Show detailed listing of all spectra and chromatograms (peak files only)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_check_corrupt_only
  doc: Check for corrupt data in the file (peak files only)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_validate_file_consensusxml
  doc: Validate the file only (for mzML, mzData, mzXML, featureXML, idXML, consensusXML,
    pepXML)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_check_file_contains
  doc: Check whether a given mzML file contains valid indices (conforming to the indexedmzML
    standard)
  type: boolean?
  inputBinding:
    prefix: -i
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
  doc: "Optional output file. If left out, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- FileInfo
