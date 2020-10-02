class: CommandLineTool
id: XFDR.cwl
inputs:
- id: in_in
  doc: "Crosslink Identifications in either xquest.xml, idXML, or mzIdentML format\
    \ (as produced by OpenPepXL) (valid formats: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Type of input file provided with -in (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -in_type
- id: in_out_idxml
  doc: "Output as idXML file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out_idXML
- id: in_out_mz_ident_ml
  doc: "Output as mzIdentML file (valid formats: 'mzid')"
  type: File
  inputBinding:
    prefix: -out_mzIdentML
- id: in_out_x_quest
  doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -out_xquest
- id: in_decoy_string
  doc: "Prefix of decoy protein ids. The correspondig target protein id should be\
    \ retrievable by deleting this prefix. (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: in_min_border
  doc: "Filter for minimum precursor mass error (ppm). (default: '-1')"
  type: long
  inputBinding:
    prefix: -minborder
- id: in_max_border
  doc: "Filter for maximum precursor mass error (ppm). (default: '-1')"
  type: long
  inputBinding:
    prefix: -maxborder
- id: in_min_deltas
  doc: "Filter for delta score, 0 is no filter. Minimum delta score required, hits\
    \ are rejected if larger or equal. (default: '0' min: '0' max: '1')"
  type: long
  inputBinding:
    prefix: -mindeltas
- id: in_minions_matched
  doc: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
  type: long
  inputBinding:
    prefix: -minionsmatched
- id: in_unique_xl
  doc: Calculate statistics based only on unique IDs.
  type: boolean
  inputBinding:
    prefix: -uniquexl
- id: in_no_q_values
  doc: Do not transform simple FDR to q-values
  type: boolean
  inputBinding:
    prefix: -no_qvalues
- id: in_min_score
  doc: "Minimum score to be considered for FDR calculation (default: '0')"
  type: long
  inputBinding:
    prefix: -minscore
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
- id: out_out_idxml
  doc: "Output as idXML file (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_idxml)
- id: out_out_mz_ident_ml
  doc: "Output as mzIdentML file (valid formats: 'mzid')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_mz_ident_ml)
- id: out_out_x_quest
  doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_x_quest)
cwlVersion: v1.1
baseCommand:
- XFDR
