class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/FileMerger.cwl
inputs:
- id: in
  doc: "*                  Input files separated by blank (valid formats: 'mzData',\
    \ 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid',\
    \ 'traML', 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type (default: determined from file extension or content) (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'fid', 'traML', 'fasta')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'traML', 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: annotate_file_origin
  doc: Store the original filename in each feature using meta value "file_origin"
    (for featureXML and consensusXML only).
  type: boolean
  inputBinding:
    prefix: -annotate_file_origin
- id: append_method
  doc: "Append consensusMaps rowise or colwise. (Please use colwise for the MSstatsConverter)\
    \ (default: 'append_rows' valid: 'append_rows', 'append_cols')"
  type: string
  inputBinding:
    prefix: -append_method
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
- FileMerger
