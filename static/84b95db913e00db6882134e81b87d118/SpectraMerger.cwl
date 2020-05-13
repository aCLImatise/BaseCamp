class: CommandLineTool
id: SpectraMerger.cwl
inputs:
- id: in
  doc: "*               Input mzML file. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*              Output mzML file with merged spectra. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: merging_method
  doc: "Method of merging which should be used. (default: 'average_gaussian' valid:\
    \ 'average_gaussian', 'average_tophat', 'precursor_method', 'block_method')"
  type: string
  inputBinding:
    prefix: -merging_method
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
- id: algorithm
  doc: Algorithm section for merging spectra
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/TOPP_SpectraMerger.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- SpectraMerger
