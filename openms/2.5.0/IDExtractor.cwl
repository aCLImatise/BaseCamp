class: CommandLineTool
id: IDExtractor.cwl
inputs:
- id: in
  doc: "*                        Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                       Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: number_of_peptides
  doc: "Number of randomly chosen peptides (default: '10' min: '1')"
  type: long
  inputBinding:
    prefix: -number_of_peptides
- id: number_of_rand_in_v_ok_ations
  doc: "Number of rand invocations before random draw (default: '0' min: '0')"
  type: long
  inputBinding:
    prefix: -number_of_rand_invokations
- id: best_hits
  doc: If this flag is set the best n peptides are chosen.
  type: boolean
  inputBinding:
    prefix: -best_hits
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
- IDExtractor
