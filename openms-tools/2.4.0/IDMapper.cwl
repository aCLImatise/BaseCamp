#!/usr/bin/env cwl-runner

baseCommand:
- IDMapper
class: CommandLineTool
cwlVersion: v1.0
id: idmapper
inputs:
- doc: "*                  Protein/peptide identifications file (valid formats: 'mzid',\
    \ 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "*                  Feature map/consensus map file (valid formats: 'featureXML',\
    \ 'consensusXML', 'mzq')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                 Output file (the format depends on the input file format).\
    \ (valid formats: 'featureXML', 'consensusXML', 'mzq')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "RT tolerance (in seconds) for the matching of peptide identifications and\
    \ (consensus) features. Tolerance is understood as 'plus or minus x', so the matching\
    \ range increases by twice the given value. (default: '5' min: '0')"
  id: rt_tolerance
  inputBinding:
    prefix: -rt_tolerance
  type: string
- doc: "M/z tolerance (in ppm or Da) for the matching of peptide identifications and\
    \ (consensus) features. Tolerance is understood as 'plus or minus x', so the matching\
    \ range increases by twice the given value. (default: '20' min: '0')"
  id: mz_tolerance
  inputBinding:
    prefix: -mz_tolerance
  type: string
- doc: "Unit of 'mz_tolerance'. (default: 'ppm' valid: 'ppm', 'Da')"
  id: mz_measure
  inputBinding:
    prefix: -mz_measure
  type: string
- doc: "Source of m/z values for peptide identifications. If 'precursor', the precursor-m/z\
    \ from the idXML is used. If 'peptide', masses are computed from the sequences\
    \ of peptide hits; in this case, an identification matches if any of its hits\
    \ matches. ('peptide' should be used together with 'feature:use_centroid_mz' to\
    \ avoid false-positive matches.) (default: 'precursor' valid: 'precursor', 'peptide')"
  id: mz_reference
  inputBinding:
    prefix: -mz_reference
  type: string
- doc: 'For feature/consensus maps: Assign an ID independently of whether its charge
    state matches that of the (consensus) feature.'
  id: ignore_charge
  inputBinding:
    prefix: -ignore_charge
  type: boolean
- doc: :use_centroid_rt     Use the RT coordinates of the feature centroids for matching,
    instead of the RT ranges of the features/mass traces.
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :use_centroid_mz     Use the m/z coordinates of the feature centroids for matching,
    instead of the m/z ranges of the features/mass traces. (If you choose 'peptide'
    as 'mz_reference', you should usually set this flag to avoid false-positive matches.)
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :use_subelements   Match using RT and m/z of sub-features instead of consensus
    RT and m/z. A consensus feature matches if any of its sub-features matches.
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":in <file>           MS run used to annotated unidentified spectra to features\
    \ or consensus features. (valid formats: 'mzML')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
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
