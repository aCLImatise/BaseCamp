class: CommandLineTool
id: XFDR.cwl
inputs:
- id: in
  doc: "Crosslink Identifications in either xquest.xml, idXML, or mzIdentML format\
    \ (as produced by OpenPepXL) (valid formats: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Type of input file provided with -in (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out_idxml
  doc: "Output as idXML file (valid formats: 'idXML')"
  type: string
  inputBinding:
    prefix: -out_idXML
- id: out_mz_ident_ml
  doc: "Output as mzIdentML file (valid formats: 'mzid')"
  type: string
  inputBinding:
    prefix: -out_mzIdentML
- id: out_x_quest
  doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  type: string
  inputBinding:
    prefix: -out_xquest
- id: decoy_string
  doc: "Prefix of decoy protein ids. The correspondig target protein id should be\
    \ retrievable by deleting this prefix. (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: min_border
  doc: "Filter for minimum precursor mass error (ppm). (default: '-1')"
  type: long
  inputBinding:
    prefix: -minborder
- id: max_border
  doc: "Filter for maximum precursor mass error (ppm). (default: '-1')"
  type: long
  inputBinding:
    prefix: -maxborder
- id: min_deltas
  doc: "Filter for delta score, 0 is no filter. Minimum delta score required, hits\
    \ are rejected if larger or equal. (default: '0' min: '0' max: '1')"
  type: long
  inputBinding:
    prefix: -mindeltas
- id: minions_matched
  doc: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
  type: long
  inputBinding:
    prefix: -minionsmatched
- id: unique_xl
  doc: Calculate statistics based only on unique IDs.
  type: boolean
  inputBinding:
    prefix: -uniquexl
- id: no_q_values
  doc: Do not transform simple FDR to q-values
  type: boolean
  inputBinding:
    prefix: -no_qvalues
- id: min_score
  doc: "Minimum score to be considered for FDR calculation (default: '0')"
  type: long
  inputBinding:
    prefix: -minscore
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
- XFDR
