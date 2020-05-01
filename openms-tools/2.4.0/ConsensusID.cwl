#!/usr/bin/env cwl-runner

baseCommand:
- ConsensusID
class: CommandLineTool
cwlVersion: v1.0
id: consensusid
inputs:
- doc: "*                       Input file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                      Output file (valid formats: 'idXML', 'featureXML',\
    \ 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "[idXML input only] Maximum allowed retention time deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0')"
  id: rt_delta
  inputBinding:
    prefix: -rt_delta
  type: string
- doc: "[idXML input only] Maximum allowed precursor m/z deviation between identifications\
    \ belonging to the same spectrum. (default: '0.1' min: '0')"
  id: mz_delta
  inputBinding:
    prefix: -mz_delta
  type: string
- doc: ":considered_hits <number>  The number of top hits in each ID run that are\
    \ considered for consensus scoring ('0' for all hits). (default: '0' min: '0')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: ":min_support <value>       For each peptide hit from an ID run, the fraction\
    \ of other ID runs that must support that hit (otherwise it is removed). (default:\
    \ '0' min: '0' max: '1')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: :count_empty               Count empty ID runs (i.e. those containing no peptide
    hit for the current spectrum) when calculating 'min_support'?
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: "Algorithm used for consensus scoring. * PEPMatrix: Scoring based on posterior\
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
  id: algorithm
  inputBinding:
    prefix: -algorithm
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
- doc: PEPIons algorithm parameters
  id: pep_ions
  inputBinding:
    prefix: '- PEPIons'
  type: boolean
- doc: PEPMatrix algorithm parameters
  id: pep_matrix
  inputBinding:
    prefix: '- PEPMatrix'
  type: boolean
