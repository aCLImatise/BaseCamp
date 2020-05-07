class: CommandLineTool
id: ConsensusID.cwl
inputs:
- id: in
  doc: "*                       Input file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                      Output file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: rt_delta
  doc: "[idXML input only] Maximum allowed retention time deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0')"
  type: string
  inputBinding:
    prefix: -rt_delta
- id: mz_delta
  doc: "[idXML input only] Maximum allowed precursor m/z deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0')"
  type: string
  inputBinding:
    prefix: -mz_delta
- id: filter
  doc: ":considered_hits <number>  The number of top hits in each ID run that are\
    \ considered for consensus scoring ('0' for all hits). (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: filter
  doc: ":min_support <value>       For each peptide hit from an ID run, the fraction\
    \ of other ID runs that must support that hit (otherwise it is removed). (default:\
    \ '0' min: '0' max: '1')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: filter
  doc: :count_empty               Count empty ID runs (i.e. those containing no peptide
    hit for the current spectrum) when calculating 'min_support'?
  type: boolean
  inputBinding:
    prefix: -filter
- id: algorithm
  doc: "Algorithm used for consensus scoring. * PEPMatrix: Scoring based on posterior\
    \ error probabilities (PEPs) and peptide sequence similarities (scored by a substitution\
    \ matrix). Requires PEPs as scores. * PEPIons: Scoring based on posterior error\
    \ probabilities (PEPs) and fragment ion similarities ('shared peak count'). Requires\
    \ PEPs as scores. * best: For each peptide ID, use the best score of any search\
    \ engine as the consensus score. Requires the same score type in all ID runs.\
    \ * worst: For each peptide ID, use the worst score of any search engine as the\
    \ consensus score. Requires the same score type in all ID runs. * average:  For\
    \ each peptide ID, use the average score of all search engines as the consensus.\
    \ Requires the same score type in all ID runs. * ranks: Calculates a consensus\
    \ score based on the ranks of peptide IDs in the results of different search engines.\
    \ The final score is in the range (0, 1], with 1 being the best score. No requirements\
    \ about score types. (default: 'PEPMatrix' valid: 'PEPMatrix', 'PEPIons', 'best',\
    \ 'worst', 'average', 'ranks')"
  type: string
  inputBinding:
    prefix: -algorithm
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
- id: pep_ions
  doc: PEPIons algorithm parameters
  type: boolean
  inputBinding:
    prefix: '- PEPIons'
- id: pep_matrix
  doc: PEPMatrix algorithm parameters
  type: boolean
  inputBinding:
    prefix: '- PEPMatrix'
outputs: []
cwlVersion: v1.1
baseCommand:
- ConsensusID
