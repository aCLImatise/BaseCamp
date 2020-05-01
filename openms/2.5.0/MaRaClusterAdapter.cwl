#!/usr/bin/env cwl-runner

baseCommand:
- MaRaClusterAdapter
class: CommandLineTool
cwlVersion: v1.0
id: maraclusteradapter
inputs:
- doc: "*                           Input file(s) (valid formats: 'mzML', 'mgf')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Optional idXML Input file(s) in the same order as mzML files - for Maracluster\
    \ Cluster annotation (valid formats: 'idXML')"
  id: id_in
  inputBinding:
    prefix: -id_in
  type: File
- doc: "Output file in idXML format (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Consensus spectra in mzML format (valid formats: 'mzML')"
  id: consensus_out
  inputBinding:
    prefix: -consensus_out
  type: File
- doc: Output directory for MaRaCluster original consensus output
  id: output_directory
  inputBinding:
    prefix: -output_directory
  type: Directory
- doc: "Log(p-value) cutoff, has to be < 0.0. Default: -10.0. (default: '-10.0' max:\
    \ '0.0')"
  id: p_cut
  inputBinding:
    prefix: -pcut
  type: string
- doc: "Minimum number of spectra in a cluster for consensus spectra (default: '1'\
    \ min: '1')"
  id: min_cluster_size
  inputBinding:
    prefix: -min_cluster_size
  type: string
- doc: '*  The maracluster executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  id: mar_a_cluster_executable
  inputBinding:
    prefix: -maracluster_executable
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
