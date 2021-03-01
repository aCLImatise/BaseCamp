class: CommandLineTool
id: FileMerger.cwl
inputs:
- id: in_in
  doc: "*                  Input files separated by blank (valid formats: 'mzData',\
    \ 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid',\
    \ 'traML', 'fasta')"
  type: long?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type (default: determined from file extension or content) (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'fid', 'traML', 'fasta')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'traML', 'fasta')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_annotate_file_origin
  doc: Store the original filename in each feature using meta value "file_origin"
    (for featureXML and consensusXML only).
  type: boolean?
  inputBinding:
    prefix: -annotate_file_origin
- id: in_append_method
  doc: "Append consensusMaps rowise or colwise. (Please use colwise for the MSstatsConverter)\
    \ (default: 'append_rows' valid: 'append_rows', 'append_cols')"
  type: string?
  inputBinding:
    prefix: -append_method
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
  doc: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'traML', 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- FileMerger
