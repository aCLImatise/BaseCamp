class: CommandLineTool
id: IDMapper.cwl
inputs:
- id: id
  doc: "*                  Protein/peptide identifications file (valid formats: 'mzid',\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: in
  doc: "*                  Feature map/consensus map file (valid formats: 'featureXML',\
    \ 'consensusXML', 'mzq')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                 Output file (the format depends on the input file format).\
    \ (valid formats: 'featureXML', 'consensusXML', 'mzq')"
  type: File
  inputBinding:
    prefix: -out
- id: rt_tolerance
  doc: "RT tolerance (in seconds) for the matching of peptide identifications and\
    \ (consensus) features. Tolerance is understood as 'plus or minus x', so the matching\
    \ range increases by twice the given value. (default: '5' min: '0')"
  type: string
  inputBinding:
    prefix: -rt_tolerance
- id: mz_tolerance
  doc: "M/z tolerance (in ppm or Da) for the matching of peptide identifications and\
    \ (consensus) features. Tolerance is understood as 'plus or minus x', so the matching\
    \ range increases by twice the given value. (default: '20' min: '0')"
  type: string
  inputBinding:
    prefix: -mz_tolerance
- id: mz_measure
  doc: "Unit of 'mz_tolerance'. (default: 'ppm' valid: 'ppm', 'Da')"
  type: string
  inputBinding:
    prefix: -mz_measure
- id: mz_reference
  doc: "Source of m/z values for peptide identifications. If 'precursor', the precursor-m/z\
    \ from the idXML is used. If 'peptide', masses are computed from the sequences\
    \ of peptide hits; in this case, an identification matches if any of its hits\
    \ matches. ('peptide' should be used together with 'feature:use_centroid_mz' to\
    \ avoid false-positive matches.) (default: 'precursor' valid: 'precursor', 'peptide')"
  type: string
  inputBinding:
    prefix: -mz_reference
- id: ignore_charge
  doc: 'For feature/consensus maps: Assign an ID independently of whether its charge
    state matches that of the (consensus) feature.'
  type: boolean
  inputBinding:
    prefix: -ignore_charge
- id: feature
  doc: :use_centroid_rt     Use the RT coordinates of the feature centroids for matching,
    instead of the RT ranges of the features/mass traces.
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: :use_centroid_mz     Use the m/z coordinates of the feature centroids for matching,
    instead of the m/z ranges of the features/mass traces. (If you choose 'peptide'
    as 'mz_reference', you should usually set this flag to avoid false-positive matches.)
  type: boolean
  inputBinding:
    prefix: -feature
- id: consensus
  doc: :use_subelements   Match using RT and m/z of sub-features instead of consensus
    RT and m/z. A consensus feature matches if any of its sub-features matches.
  type: boolean
  inputBinding:
    prefix: -consensus
- id: spectra
  doc: ":in <file>           MS run used to annotated unidentified spectra to features\
    \ or consensus features. (valid formats: 'mzML')"
  type: boolean
  inputBinding:
    prefix: -spectra
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
- IDMapper
