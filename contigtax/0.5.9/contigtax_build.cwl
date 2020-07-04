class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/contigtax_build.cwl
inputs:
- id: dbfile
  doc: Name of diamond database file. Defaults to diamond.dmnd in same directory as
    the protein fasta file
  type: string
  inputBinding:
    prefix: --dbfile
- id: cpus
  doc: Number of cpus to use when building (defaults to 1)
  type: string
  inputBinding:
    prefix: --cpus
- id: fast_a_file
  doc: Specify (reformatted) fasta file
  type: string
  inputBinding:
    position: 0
- id: taxon_map
  doc: Protein accession to taxid mapfile (must be gzipped)
  type: string
  inputBinding:
    position: 1
- id: tax_on_nodes
  doc: nodes.dmp file from NCBI taxonomy database
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- contigtax
- build
