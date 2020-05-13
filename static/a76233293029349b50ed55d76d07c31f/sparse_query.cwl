class: CommandLineTool
id: sparse_query.cwl
inputs:
- id: dbname
  doc: Name for the database. REQUIRED.
  type: string
  inputBinding:
    prefix: --dbname
- id: seq_list
  doc: 'File name for the output. Default: to screen.'
  type: string
  inputBinding:
    prefix: --seqlist
- id: default
  doc: 'Default MapDB criteria for updates. Choose from: representative, subpopulation,
    Virus, Eukaryota'
  type: string
  inputBinding:
    prefix: --default
- id: min
  doc: Minimum size of genomes to show
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: Maximum size of genomes to show
  type: long
  inputBinding:
    prefix: --max
- id: group
  doc: Filter using the prefix of barcode addresses
  type: string
  inputBinding:
    prefix: --group
- id: tag
  doc: Filter by relationships between different level of barcodes. i.e.,  "p!=r;p==a"
    gets references that have the same numbers in p groups and a groups, but different
    between p groups and r groups
  type: string
  inputBinding:
    prefix: --tag
- id: index
  doc: Filter by index.
  type: string
  inputBinding:
    prefix: --index
- id: barcode
  doc: Filter by barcode.
  type: string
  inputBinding:
    prefix: --barcode
- id: assembly_accession
  doc: Filter by assembly_accession.
  type: string
  inputBinding:
    prefix: --assembly_accession
- id: refseq_category
  doc: Filter by refseq_category.
  type: string
  inputBinding:
    prefix: --refseq_category
- id: assembly_level
  doc: Filter by assembly_level.
  type: string
  inputBinding:
    prefix: --assembly_level
- id: taxid
  doc: Filter by taxid.
  type: string
  inputBinding:
    prefix: --taxid
- id: organism_name
  doc: Filter by organism_name.
  type: string
  inputBinding:
    prefix: --organism_name
- id: species
  doc: Filter by species.
  type: string
  inputBinding:
    prefix: --species
- id: genus
  doc: Filter by genus.
  type: string
  inputBinding:
    prefix: --genus
- id: family
  doc: Filter by family.
  type: string
  inputBinding:
    prefix: --family
- id: order
  doc: Filter by order.
  type: string
  inputBinding:
    prefix: --order
- id: class
  doc: Filter by class.
  type: string
  inputBinding:
    prefix: --class
- id: phylum
  doc: Filter by phylum.
  type: string
  inputBinding:
    prefix: --phylum
- id: kingdom
  doc: Filter by kingdom.
  type: string
  inputBinding:
    prefix: --kingdom
- id: superkingdom
  doc: Filter by superkingdom.
  type: string
  inputBinding:
    prefix: --superkingdom
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- query
