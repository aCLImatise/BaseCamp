#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathChromatogramExtractor
class: CommandLineTool
cwlVersion: v1.0
id: openswathchromatogramextractor
inputs:
- doc: "*                   Input files separated by blank (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                    Transition file ('TraML' or 'csv') (valid formats: 'csv',\
    \ 'traML')"
  id: tr
  inputBinding:
    prefix: -tr
  type: File
- doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  id: rt_norm
  inputBinding:
    prefix: -rt_norm
  type: File
- doc: "*                   Output file (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimal distance to the edge to still consider a precursor, in Thomson (default:\
    \ '0.0')"
  id: min_upper_edge_dist
  inputBinding:
    prefix: -min_upper_edge_dist
  type: string
- doc: "Extraction window in RT dimension (-1 means extract over the whole range).\
    \ This is the full window size, e.g. a value of 1000 seconds would extract 500\
    \ seconds on either side.  (default: '-1.0')"
  id: rt_window
  inputBinding:
    prefix: -rt_window
  type: string
- doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side. (defaul t: '-1.0')"
  id: ion_mobility_window
  inputBinding:
    prefix: -ion_mobility_window
  type: string
- doc: "Extraction window in m/z dimension (in Thomson, to use ppm see -ppm flag).\
    \ This is the full window size, e.g. 100 ppm would extract 50 ppm on either side.\
    \ (default: '0.05' min:  '0.0')"
  id: mz_window
  inputBinding:
    prefix: -mz_window
  type: string
- doc: M/z extraction_window is in ppm
  id: ppm
  inputBinding:
    prefix: -ppm
  type: boolean
- doc: Set this flag if the data is SWATH data
  id: is_swath
  inputBinding:
    prefix: -is_swath
  type: boolean
- doc: Extract the MS1 transitions based on the precursor values in the TraML file
    (useful for extracting MS1 XIC)
  id: extract_ms1
  inputBinding:
    prefix: -extract_MS1
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
