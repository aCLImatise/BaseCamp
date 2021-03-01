class: CommandLineTool
id: IDExtractor.cwl
inputs:
- id: in_in
  doc: "*                        Input file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                       Output file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_number_of_peptides
  doc: "Number of randomly chosen peptides (default: '10' min: '1')"
  type: long?
  inputBinding:
    prefix: -number_of_peptides
- id: in_number_of_rand_in_v_ok_ations
  doc: "Number of rand invocations before random draw (default: '0' min: '0')"
  type: long?
  inputBinding:
    prefix: -number_of_rand_invokations
- id: in_best_hits
  doc: If this flag is set the best n peptides are chosen.
  type: boolean?
  inputBinding:
    prefix: -best_hits
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
  doc: "*                       Output file (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- IDExtractor
