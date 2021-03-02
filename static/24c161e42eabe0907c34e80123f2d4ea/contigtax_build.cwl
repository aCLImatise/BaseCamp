class: CommandLineTool
id: contigtax_build.cwl
inputs:
- id: in_dbfile
  doc: "Name of diamond database file. Defaults to\ndiamond.dmnd in same directory\
    \ as the protein fasta\nfile"
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_cpus
  doc: Number of cpus to use when building (defaults to 1)
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_fast_a_file
  doc: Specify (reformatted) fasta file
  type: string
  inputBinding:
    position: 0
- id: in_taxon_map
  doc: Protein accession to taxid mapfile (must be gzipped)
  type: string
  inputBinding:
    position: 1
- id: in_tax_on_nodes
  doc: nodes.dmp file from NCBI taxonomy database
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- contigtax
- build
