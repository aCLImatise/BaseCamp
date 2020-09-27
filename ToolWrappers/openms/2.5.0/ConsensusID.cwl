class: CommandLineTool
id: ConsensusID.cwl
inputs:
- id: in_in
  doc: "*                       Input file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                      Output file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_rt_delta
  doc: "[idXML input only] Maximum allowed retention time deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0.0')"
  type: long
  inputBinding:
    prefix: -rt_delta
- id: in_mz_delta
  doc: "[idXML input only] Maximum allowed precursor m/z deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0.0')"
  type: long
  inputBinding:
    prefix: -mz_delta
- id: in_algorithm
  doc: "Algorithm used for consensus scoring.\n* PEPMatrix: Scoring based on posterior\
    \ error probabilities (PEPs) and peptide sequence similarities (scored by a substitution\
    \ matrix). Requires PEPs as scores.\n* PEPIons: Scoring based on posterior error\
    \ probabilities (PEPs) and fragment ion similarities ('shared peak count'). Requires\
    \ PEPs as scores.\n* best: For each peptide ID, use the best score of any search\
    \ engine as the consensus score. Requires the same score type in all ID runs.\n\
    * worst: For each peptide ID, use the worst score of any search engine as the\
    \ consensus score. Requires the same score type in all ID runs.\n* average:  For\
    \ each peptide ID, use the average score of all search engines as the consensus.\
    \ Requires the same score type in all ID runs.\n* ranks: Calculates a consensus\
    \ score based on the ranks of peptide IDs in the results of different search engines.\
    \ The final score is in the range (0, 1], with 1 being the best score. No requirements\
    \ about score types. (default: 'PEPMatrix' valid: 'PEPMatrix', 'PEPIons', 'best',\
    \ 'worst', 'average', 'ranks')"
  type: long
  inputBinding:
    prefix: -algorithm
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
  doc: "*                      Output file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ConsensusID
