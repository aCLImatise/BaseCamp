class: CommandLineTool
id: NucleicAcidSearchEngine.cwl
inputs:
- id: in_in
  doc: "*                                  Input file: spectra (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_database
  doc: "*                            Input file: sequence database (valid formats:\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: in_out
  doc: "*                                 Output file: mzTab (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: in_id_out
  doc: "Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_out
- id: in_lf_q_out
  doc: "Output file: Targets for label-free quantification using FeatureFinderMetaboIdent\
    \ ('id' input) (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -lfq_out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                                 Output file: mzTab (valid formats: 'mzTab')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_id_out
  doc: "Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_id_out)
cwlVersion: v1.1
baseCommand:
- NucleicAcidSearchEngine
