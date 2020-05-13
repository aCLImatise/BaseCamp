class: CommandLineTool
id: MultiplexResolver.cwl
inputs:
- id: in
  doc: "*            Peptide multiplets with assigned sequence information (valid\
    \ formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_blacklist
  doc: "Optional input containing spectral peaks blacklisted during feature detection.\
    \ Needed for generation of dummy features. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in_blacklist
- id: out
  doc: "*           Complete peptide multiplets. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_conflicts
  doc: "Optional output containing peptide multiplets without ID annotation or with\
    \ conflicting quant/ID information. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_conflicts
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
  doc: Parameters for the algorithm.
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: labels
  doc: Isotopic labels that can be specified in section 'algorithm:labels'.
  type: boolean
  inputBinding:
    prefix: '- labels'
- id: http
  doc: ://www.openms.de/documentation/UTILS_MultiplexResolver.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- MultiplexResolver
