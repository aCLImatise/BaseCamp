class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NucleicAcidSearchEngine.cwl
inputs:
- id: in
  doc: "*                                  Input file: spectra (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                            Input file: sequence database (valid formats:\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*                                 Output file: mzTab (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: id_out
  doc: "Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_out
- id: lf_q_out
  doc: "Output file: Targets for label-free quantification using FeatureFinderMetaboIdent\
    \ ('id' input) (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -lfq_out
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
- NucleicAcidSearchEngine
