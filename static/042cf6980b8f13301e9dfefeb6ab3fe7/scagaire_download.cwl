class: CommandLineTool
id: ../../../scagaire_download.cwl
inputs:
- id: assembly_level
  doc: 'Assembly level (default: all)'
  type: string
  inputBinding:
    prefix: --assembly_level
- id: threads
  doc: 'No. of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: mash_database
  doc: 'Mash database for checking assembly species classification, defaults to bundled
    (default: None)'
  type: string
  inputBinding:
    prefix: --mash_database
- id: output_file
  doc: 'Output filename (default: species_to_genes.tsv)'
  type: string
  inputBinding:
    prefix: --output_file
- id: output_directory
  doc: 'Working output directory (default: None)'
  type: string
  inputBinding:
    prefix: --output_directory
- id: minimum_distance
  doc: 'Mash minimum distance threshold (default: 0.2)'
  type: long
  inputBinding:
    prefix: --minimum_distance
- id: downloads_directory
  doc: 'Use this directory of NCBI genomes instead of downloading (default: None)'
  type: string
  inputBinding:
    prefix: --downloads_directory
- id: refseq_category
  doc: 'Quality of the assemblies (default: all)'
  type: string
  inputBinding:
    prefix: --refseq_category
- id: a_bricat_e_database
  doc: 'Abricate database.Multiple databases comma separated (default: ncbi)'
  type: string
  inputBinding:
    prefix: --abricate_database
- id: min_coverage
  doc: 'Min percentage coverage over AMR gene (default: 95)'
  type: long
  inputBinding:
    prefix: --min_coverage
- id: min_identity
  doc: 'Min percentage identity over AMR gene (default: 95)'
  type: long
  inputBinding:
    prefix: --min_identity
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: species
  doc: Species name, use scagaire_species to see all available
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scagaire_download
