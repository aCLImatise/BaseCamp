class: CommandLineTool
id: MaRaClusterAdapter.cwl
inputs:
- id: in
  doc: "*                           Input file(s) (valid formats: 'mzML', 'mgf')"
  type: File
  inputBinding:
    prefix: -in
- id: id_in
  doc: "Optional idXML Input file(s) in the same order as mzML files - for Maracluster\
    \ Cluster annotation (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_in
- id: out
  doc: "Output file in idXML format (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: consensus_out
  doc: "Consensus spectra in mzML format (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -consensus_out
- id: output_directory
  doc: Output directory for MaRaCluster original consensus output
  type: Directory
  inputBinding:
    prefix: -output_directory
- id: p_cut
  doc: "Log(p-value) cutoff, has to be < 0.0. Default: -10.0. (default: '-10.0' max:\
    \ '0.0')"
  type: string
  inputBinding:
    prefix: -pcut
- id: min_cluster_size
  doc: "Minimum number of spectra in a cluster for consensus spectra (default: '1'\
    \ min: '1')"
  type: string
  inputBinding:
    prefix: -min_cluster_size
- id: mar_a_cluster_executable
  doc: '*  The maracluster executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  type: string
  inputBinding:
    prefix: -maracluster_executable
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
- MaRaClusterAdapter
