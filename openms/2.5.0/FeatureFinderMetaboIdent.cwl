#!/usr/bin/env cwl-runner

baseCommand:
- FeatureFinderMetaboIdent
class: CommandLineTool
cwlVersion: v1.0
id: featurefindermetaboident
inputs:
- doc: "*                   Input file: LC-MS raw data (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                   Input file: Metabolite identifications (valid formats:\
    \ 'tsv')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "*                  Output file: Features (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file: Assay library (valid formats: 'traML')"
  id: lib_out
  inputBinding:
    prefix: -lib_out
  type: File
- doc: "Output file: Chromatograms (valid formats: 'mzML')"
  id: chrom_out
  inputBinding:
    prefix: -chrom_out
  type: File
- doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  id: candidates_out
  inputBinding:
    prefix: -candidates_out
  type: File
- doc: "Output file: Retention times (expected vs. observed) (valid formats: 'trafoXML')"
  id: traf_o_out
  inputBinding:
    prefix: -trafo_out
  type: File
- doc: ":mz_window <value>    M/z window size for chromatogram extraction (unit: ppm\
    \ if 1 or greater, else Da/Th) (default: '10.0' min: '0.0')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":n_isotopes <number>  Number of isotopes to include in each assay. (default:\
    \ '2' min: '2')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":rt_window <value>    RT window size (in sec.) for chromatogram extraction.\
    \ If zero, calculated based on 'detect:peak_width'. (default: '0.0' min: '0.0')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":peak_width <value>    Expected elution peak width in seconds, for smoothing\
    \ (Gauss filter). Also determines the RT extration window, unless set explicitly\
    \ via 'extract:rt_window'. (default: '5.0' min: '0.0')"
  id: detect
  inputBinding:
    prefix: -detect
  type: boolean
- doc: ":type <choice>          Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  id: model
  inputBinding:
    prefix: -model
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
