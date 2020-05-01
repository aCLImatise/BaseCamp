#!/usr/bin/env cwl-runner

baseCommand:
- XFDR
class: CommandLineTool
cwlVersion: v1.0
id: xfdr
inputs:
- doc: "Crosslink Identifications in either xquest.xml, idXML, or mzIdentML format\
    \ (as produced by OpenPepXL) (valid formats: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Type of input file provided with -in. If omitted, the file type is guessed\
    \ from the file extension. (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "Output as idXML file (valid formats: 'idXML')"
  id: out_idxml
  inputBinding:
    prefix: -out_idXML
  type: string
- doc: "Output as mzIdentML file (valid formats: 'mzid')"
  id: out_mz_ident_ml
  inputBinding:
    prefix: -out_mzIdentML
  type: string
- doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  id: out_x_quest
  inputBinding:
    prefix: -out_xquest
  type: string
- doc: "Prefix of decoy protein ids. The correspondig target protein id should be\
    \ retrievable by deleting this prefix. (default: 'DECOY_')"
  id: decoy_string
  inputBinding:
    prefix: -decoy_string
  type: string
- doc: "Filter for minimum precursor mass error (ppm) before FDR estimation. Values\
    \ outside of the tolerance window of the original search will effectively disable\
    \ this filter. (defau lt: '-50.0')"
  id: min_border
  inputBinding:
    prefix: -minborder
  type: string
- doc: "Filter for maximum precursor mass error (ppm) before FDR estimation. Values\
    \ outside of the tolerance window of the original search will effectively disable\
    \ this filter. (defau lt: '50.0')"
  id: max_border
  inputBinding:
    prefix: -maxborder
  type: string
- doc: "Filter for delta score, 0 disables the filter. Minimum delta score required,\
    \ hits are rejected if larger or equal. The delta score is a ratio of the score\
    \ of a hit and the  score of the next best hit to the same spectrum, so the value\
    \ range is between 0 and 1 with 1.0 meaning the scores are equal and 0.5 meaning\
    \ the next best score is half as high as the current one. (default: '0.0' min:\
    \ '0.0' max: '1.0')"
  id: min_deltas
  inputBinding:
    prefix: -mindeltas
  type: string
- doc: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
  id: minions_matched
  inputBinding:
    prefix: -minionsmatched
  type: string
- doc: Calculate statistics based only on unique IDs. For a set of IDs from equal
    candidates (same pair of peptides, modifications and cross-linked positions),
    only the highest scori ng hit will be considered. By default the score distribution
    will be estimated using all 1st ranked candidates.
  id: unique_xl
  inputBinding:
    prefix: -uniquexl
  type: boolean
- doc: Do not transform simple FDR to q-values
  id: no_q_values
  inputBinding:
    prefix: -no_qvalues
  type: boolean
- doc: "Minimum score to be considered for FDR calculation. A number lower than the\
    \ lowest score will effectively disable this filter. (default: '-10.0')"
  id: min_score
  inputBinding:
    prefix: -minscore
  type: string
- doc: "Bin size for the cumulative histograms for score distributions. Should be\
    \ about the same size as the smallest expected difference between scores. Smaller\
    \ numbers will make  XFDR more robust, but much slower. Negative numbers are not\
    \ allowed. Should only be changed if the range of the main score changes or another\
    \ score than the OpenPepXL score is used. (default: '1.0e-04' min: '1.0e-15')"
  id: binsize
  inputBinding:
    prefix: -binsize
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
