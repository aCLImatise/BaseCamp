#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathAnalyzer
class: CommandLineTool
cwlVersion: v1.0
id: openswathanalyzer
inputs:
- doc: "*                    Input file containing the chromatograms. (valid formats:\
    \ 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                    Transition file (valid formats: 'TraML')"
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
- doc: "*                   Output file (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Run in non-strict mode and allow some chromatograms to not be mapped.
  id: no_strict
  inputBinding:
    prefix: -no-strict
  type: boolean
- doc: "[applies only if you have full MS2 spectra maps] Swath files that were used\
    \ to extract the transitions. If present, SWATH specific scoring will be used.\
    \ (valid formats: 'mzML')"
  id: swath_files
  inputBinding:
    prefix: -swath_files
  type: File
- doc: "[applies only if you have full MS2 spectra maps] Minimal distance to the edge\
    \ to still consider a precursor, in Thomson (only in SWATH) (default: '0')"
  id: min_upper_edge_dist
  inputBinding:
    prefix: -min_upper_edge_dist
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
