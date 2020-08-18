class: CommandLineTool
id: ../../../MSFraggerAdapter.cwl
inputs:
- id: java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File
  inputBinding:
    prefix: -java_executable
- id: java_heap_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: string
  inputBinding:
    prefix: -java_heapmemory
- id: executable
  doc: Path to the MSFragger executable to use; may be empty if the executable is
    globally available.
  type: File
  inputBinding:
    prefix: -executable
- id: in
  doc: "*                                                              Input File\
    \ with specta for MSFragger (valid formats: 'mzML', 'mzXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                                             MSFragger output\
    \ file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: opt_out
  doc: "MSFragger optional output file (valid formats: 'pepXML')"
  type: File
  inputBinding:
    prefix: -opt_out
- id: database
  doc: "*                                               Protein FASTA database file\
    \ path (valid formats: 'FASTA', 'fasta', 'fa', 'fas')"
  type: File
  inputBinding:
    prefix: -database
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
- MSFraggerAdapter
