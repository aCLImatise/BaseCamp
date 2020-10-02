class: CommandLineTool
id: sparse_query.cwl
inputs:
- id: in_dbname
  doc: Name for the database. REQUIRED.
  type: string
  inputBinding:
    prefix: --dbname
- id: in_seq_list
  doc: 'File name for the output. Default: to screen.'
  type: File
  inputBinding:
    prefix: --seqlist
- id: in_default
  doc: "Default MapDB criteria for updates. Choose from:\nrepresentative, subpopulation,\
    \ Virus, Eukaryota"
  type: string
  inputBinding:
    prefix: --default
- id: in_min
  doc: Minimum size of genomes to show
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: Maximum size of genomes to show
  type: long
  inputBinding:
    prefix: --max
- id: in_group
  doc: Filter using the prefix of barcode addresses
  type: string
  inputBinding:
    prefix: --group
- id: in_tag
  doc: "Filter by relationships between different level of barcodes. i.e.,\n\"p!=r;p==a\"\
    \ gets references that have the same numbers in p groups and a groups, but different\
    \ between p groups and r groups"
  type: string
  inputBinding:
    prefix: --tag
- id: in_index
  doc: Filter by index.
  type: string
  inputBinding:
    prefix: --index
- id: in_barcode
  doc: Filter by barcode.
  type: string
  inputBinding:
    prefix: --barcode
- id: in_assembly_accession
  doc: Filter by assembly_accession.
  type: string
  inputBinding:
    prefix: --assembly_accession
- id: in_refseq_category
  doc: Filter by refseq_category.
  type: string
  inputBinding:
    prefix: --refseq_category
- id: in_assembly_level
  doc: Filter by assembly_level.
  type: string
  inputBinding:
    prefix: --assembly_level
- id: in_taxid
  doc: Filter by taxid.
  type: string
  inputBinding:
    prefix: --taxid
- id: in_organism_name
  doc: Filter by organism_name.
  type: string
  inputBinding:
    prefix: --organism_name
- id: in_species
  doc: Filter by species.
  type: string
  inputBinding:
    prefix: --species
- id: in_genus
  doc: Filter by genus.
  type: string
  inputBinding:
    prefix: --genus
- id: in_family
  doc: Filter by family.
  type: string
  inputBinding:
    prefix: --family
- id: in_order
  doc: Filter by order.
  type: string
  inputBinding:
    prefix: --order
- id: in_class
  doc: Filter by class.
  type: string
  inputBinding:
    prefix: --class
- id: in_phylum
  doc: Filter by phylum.
  type: string
  inputBinding:
    prefix: --phylum
- id: in_kingdom
  doc: Filter by kingdom.
  type: string
  inputBinding:
    prefix: --kingdom
- id: in_superkingdom
  doc: "Filter by superkingdom.\n"
  type: string
  inputBinding:
    prefix: --superkingdom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_seq_list
  doc: 'File name for the output. Default: to screen.'
  type: File
  outputBinding:
    glob: $(inputs.in_seq_list)
cwlVersion: v1.1
baseCommand:
- sparse
- query
