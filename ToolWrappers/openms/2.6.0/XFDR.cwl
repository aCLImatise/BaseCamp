class: CommandLineTool
id: XFDR.cwl
inputs:
- id: in_in
  doc: "Crosslink Identifications in either xquest.xml, idXML, or mzIdentML format\
    \ (as produced by OpenPepXL) (valid formats: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Type of input file provided with -in. If omitted, the file type is guessed\
    \ from the file extension. (valid: 'xml', 'idXML', 'mzid', 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out_idxml
  doc: "Output as idXML file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out_idXML
- id: in_out_mz_ident_ml
  doc: "Output as mzIdentML file (valid formats: 'mzid')"
  type: File?
  inputBinding:
    prefix: -out_mzIdentML
- id: in_out_x_quest
  doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -out_xquest
- id: in_decoy_string
  doc: "Prefix of decoy protein ids. The correspondig target protein id should be\
    \ retrievable by deleting this prefix. (default: 'DECOY_')"
  type: string?
  inputBinding:
    prefix: -decoy_string
- id: in_min_border
  doc: "Filter for minimum precursor mass error (ppm) before FDR estimation. Values\
    \ outside of the tolerance window of the original search will effectively disable\
    \ this filter. (default: '-50.0')"
  type: double?
  inputBinding:
    prefix: -minborder
- id: in_max_border
  doc: "Filter for maximum precursor mass error (ppm) before FDR estimation. Values\
    \ outside of the tolerance window of the original search will effectively disable\
    \ this filter. (default: '50.0')"
  type: double?
  inputBinding:
    prefix: -maxborder
- id: in_min_deltas
  doc: "Filter for delta score, 0 disables the filter. Minimum delta score required,\
    \ hits are rejected if larger or equal. The delta score is a ratio of the score\
    \ of a hit and the score of the next best hit to the same spectrum, so the value\
    \ range is between 0 and 1 with 1.0 meaning the scores are equal and 0.5 meaning\
    \ the next best score is half as high as the current one. (default: '0.0' min:\
    \ '0.0' max: '1.0')"
  type: long?
  inputBinding:
    prefix: -mindeltas
- id: in_minions_matched
  doc: "Filter for minimum matched ions per peptide. (default: '0' min: '0')"
  type: long?
  inputBinding:
    prefix: -minionsmatched
- id: in_unique_xl
  doc: Calculate statistics based only on unique IDs. For a set of IDs from equal
    candidates (same pair of peptides, modifications and cross-linked positions),
    only the highest scoring hit will be considered. By default the score distribution
    will be estimated using all 1st ranked candidates.
  type: boolean?
  inputBinding:
    prefix: -uniquexl
- id: in_no_q_values
  doc: Do not transform simple FDR to q-values
  type: boolean?
  inputBinding:
    prefix: -no_qvalues
- id: in_min_score
  doc: "Minimum score to be considered for FDR calculation. A number lower than the\
    \ lowest score will effectively disable this filter. (default: '-10.0')"
  type: long?
  inputBinding:
    prefix: -minscore
- id: in_binsize
  doc: "Bin size for the cumulative histograms for score distributions. Should be\
    \ about the same size as the smallest expected difference between scores. Smaller\
    \ numbers will make XFDR more robust, but much slower. Negative numbers are not\
    \ allowed. Should only be changed if the range of the main score changes or another\
    \ score than the OpenPepXL score is used. (default: '1.0e-04' min: '1.0e-15')"
  type: long?
  inputBinding:
    prefix: -binsize
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
- id: out_out_idxml
  doc: "Output as idXML file (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_idxml)
- id: out_out_mz_ident_ml
  doc: "Output as mzIdentML file (valid formats: 'mzid')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_mz_ident_ml)
- id: out_out_x_quest
  doc: "Output as xquest.xml file (valid formats: 'xquest.xml')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_x_quest)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- XFDR
