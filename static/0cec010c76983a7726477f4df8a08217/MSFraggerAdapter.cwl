class: CommandLineTool
id: MSFraggerAdapter.cwl
inputs:
- id: in_java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File?
  inputBinding:
    prefix: -java_executable
- id: in_java_heap_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: long?
  inputBinding:
    prefix: -java_heapmemory
- id: in_executable
  doc: Path to the MSFragger executable to use; may be empty if the executable is
    globally available.
  type: File?
  inputBinding:
    prefix: -executable
- id: in_in
  doc: "*                                                              Input File\
    \ with specta for MSFragger (valid formats: 'mzML', 'mzXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                                                             MSFragger output\
    \ file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_opt_out
  doc: "MSFragger optional output file (valid formats: 'pepXML')"
  type: File?
  inputBinding:
    prefix: -opt_out
- id: in_database
  doc: "*                                               Protein FASTA database file\
    \ path (valid formats: 'FASTA', 'fasta', 'fa', 'fas')"
  type: File?
  inputBinding:
    prefix: -database
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
  doc: "*                                                             MSFragger output\
    \ file (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_opt_out
  doc: "MSFragger optional output file (valid formats: 'pepXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_opt_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MSFraggerAdapter
