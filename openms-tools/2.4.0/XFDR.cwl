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
- doc: "Type of input file provided with -in (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
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
- doc: "Filter for minimum precursor mass error (ppm). (default: '-1')"
  id: min_border
  inputBinding:
    prefix: -minborder
  type: long
- doc: "Filter for maximum precursor mass error (ppm). (default: '-1')"
  id: max_border
  inputBinding:
    prefix: -maxborder
  type: long
- doc: "Filter for delta score, 0 is no filter. Minimum delta score required, hits\
    \ are rejected if larger or equal. (default: '0' min: '0' max: '1')"
  id: min_deltas
  inputBinding:
    prefix: -mindeltas
  type: long
- doc: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
  id: minions_matched
  inputBinding:
    prefix: -minionsmatched
  type: long
- doc: Calculate statistics based only on unique IDs.
  id: unique_xl
  inputBinding:
    prefix: -uniquexl
  type: boolean
- doc: Do not transform simple FDR to q-values
  id: no_q_values
  inputBinding:
    prefix: -no_qvalues
  type: boolean
- doc: "Minimum score to be considered for FDR calculation (default: '0')"
  id: min_score
  inputBinding:
    prefix: -minscore
  type: long
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
