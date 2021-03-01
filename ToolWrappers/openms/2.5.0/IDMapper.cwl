class: CommandLineTool
id: IDMapper.cwl
inputs:
- id: in_id
  doc: "*                        Protein/peptide identifications file (valid formats:\
    \ 'mzid', 'idXML')"
  type: File?
  inputBinding:
    prefix: -id
- id: in_in
  doc: "*                        Feature map/consensus map file (valid formats: 'featureXML',\
    \ 'consensusXML', 'mzq')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                       Output file (the format depends on the input file\
    \ format). (valid formats: 'featureXML', 'consensusXML', 'mzq')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_rt_tolerance
  doc: "RT tolerance (in seconds) for the matching of peptide identifications and\
    \ (consensus) features.\nTolerance is understood as 'plus or minus x', so the\
    \ matching range increases by twice the given value. (default: '5.0' min: '0.0')"
  type: long?
  inputBinding:
    prefix: -rt_tolerance
- id: in_mz_tolerance
  doc: "M/z tolerance (in ppm or Da) for the matching of peptide identifications and\
    \ (consensus) features.\nTolerance is understood as 'plus or minus x', so the\
    \ matching range increases by twice the given value. (default: '20.0' min: '0.0')"
  type: long?
  inputBinding:
    prefix: -mz_tolerance
- id: in_mz_measure
  doc: "Unit of 'mz_tolerance'. (default: 'ppm' valid: 'ppm', 'Da')"
  type: string?
  inputBinding:
    prefix: -mz_measure
- id: in_mz_reference
  doc: "Source of m/z values for peptide identifications. If 'precursor', the precursor-m/z\
    \ from the idXML is used. If 'peptide',\nmasses are computed from the sequences\
    \ of peptide hits; in this case, an identification matches if any of its hits\
    \ matches.\n('peptide' should be used together with 'feature:use_centroid_mz'\
    \ to avoid false-positive matches.) (default: 'peptide' valid: 'precursor', 'peptide')"
  type: string?
  inputBinding:
    prefix: -mz_reference
- id: in_consensus
  doc: :use_subelements         Match using RT and m/z of sub-features instead of
    consensus RT and m/z. A consensus feature matches if any of its sub-features matches.
  type: boolean?
  inputBinding:
    prefix: -consensus
- id: in_spectra
  doc: ":in <file>                 MS run used to annotated unidentified spectra to\
    \ features or consensus features. (valid formats: 'mzML')"
  type: boolean?
  inputBinding:
    prefix: -spectra
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
hints: []
cwlVersion: v1.1
baseCommand:
- IDMapper
