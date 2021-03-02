class: CommandLineTool
id: SeedListGenerator.cwl
inputs:
- id: in_in
  doc: "*         Input file (see below for details) (valid formats: 'mzML', 'idXML',\
    \ 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "<file(s)>*     Output file(s) (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_use_peptide_mass
  doc: '[idXML input only] Use the monoisotopic mass of the best peptide hit for the
    m/z position (default: use precursor m/z)'
  type: boolean?
  inputBinding:
    prefix: -use_peptide_mass
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
- id: out_out
  doc: "<file(s)>*     Output file(s) (valid formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- SeedListGenerator
