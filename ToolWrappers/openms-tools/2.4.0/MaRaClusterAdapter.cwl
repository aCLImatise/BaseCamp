class: CommandLineTool
id: MaRaClusterAdapter.cwl
inputs:
- id: in_in
  doc: "*                           Input file(s) (valid formats: 'mzML', 'mgf')"
  type: File
  inputBinding:
    prefix: -in
- id: in_id_in
  doc: "Optional idXML Input file(s) in the same order as mzML files - for Maracluster\
    \ Cluster annotation (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_in
- id: in_out
  doc: "Output file in idXML format (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_consensus_out
  doc: "Consensus spectra in mzML format (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -consensus_out
- id: in_p_cut
  doc: "Log(p-value) cutoff, has to be < 0.0. Default: -10.0. (default: '-10' max:\
    \ '0')"
  type: long
  inputBinding:
    prefix: -pcut
- id: in_min_cluster_size
  doc: "Minimum number of spectra in a cluster for consensus spectra (default: '1'\
    \ min: '1')"
  type: long
  inputBinding:
    prefix: -min_cluster_size
- id: in_mar_a_cluster_executable
  doc: "*  Maracluster executable of the installation e.g. 'maracluster.exe'"
  type: string
  inputBinding:
    prefix: -maracluster_executable
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
  doc: "Output file in idXML format (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- MaRaClusterAdapter
