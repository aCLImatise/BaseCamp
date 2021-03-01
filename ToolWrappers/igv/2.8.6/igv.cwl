class: CommandLineTool
id: igv.cwl
inputs:
- id: in_preferences
  doc: Path or URL to a preference property file
  type: boolean?
  inputBinding:
    prefix: --preferences
- id: in_batch_dot
  doc: Path or url to a batch command file
  type: boolean?
  inputBinding:
    prefix: --batch.
- id: in_port
  doc: IGV command port number (defaults to 60151)
  type: boolean?
  inputBinding:
    prefix: --port
- id: in_genome
  doc: Genome ID (e.g hg19) or path or url to .genome or indexed fasta file
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_data_server_url
  doc: Path or url to a data server registry file
  type: boolean?
  inputBinding:
    prefix: --dataServerURL
- id: in_genome_server_url
  doc: Path or url to a genome server registry file
  type: boolean?
  inputBinding:
    prefix: --genomeServerURL
- id: in_index_file
  doc: Index file or comma delimited list of index files corresponding to data files
  type: boolean?
  inputBinding:
    prefix: --indexFile
- id: in_coverage_file
  doc: Coverage file or comma delimited list of coverage files corresponding to data
    files
  type: boolean?
  inputBinding:
    prefix: --coverageFile
- id: in_name
  doc: Name or comma-delimited list of names for tracks corresponding to data files
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_locus
  doc: Initial locus
  type: boolean?
  inputBinding:
    prefix: --locus
- id: in_header
  doc: header to include with all requests for list of data files
  type: string?
  inputBinding:
    prefix: --header
- id: in_igv_directory
  doc: to the local igv directory.  Defaults to <user home>/igv
  type: File?
  inputBinding:
    prefix: --igvDirectory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igv
