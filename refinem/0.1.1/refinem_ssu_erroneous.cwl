class: CommandLineTool
id: refinem_ssu_erroneous.cwl
inputs:
- id: genome_nt_dir
  doc: directory containing nucleotide scaffolds for each genome
  type: string
  inputBinding:
    position: 0
- id: tax_on_profile_dir
  doc: directory with results of taxon_profile command
  type: string
  inputBinding:
    position: 1
- id: ssu_db
  doc: BLAST database of 16S rRNA genes
  type: string
  inputBinding:
    position: 2
- id: ssu_taxonomy_file
  doc: taxonomy file for genes in the 16S rRNA database
  type: string
  inputBinding:
    position: 3
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 4
- id: genome_ext
  doc: 'extension of genomes (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --genome_ext
- id: evalue
  doc: 'e-value threshold for identifying and classifying 16S rRNA genes (default:
    1e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: concatenate
  doc: 'concatenate hits within the specified number of base pairs (default: 200)'
  type: string
  inputBinding:
    prefix: --concatenate
- id: common_tax_on
  doc: 'threshold for defining a taxon as common (default: 10.0)'
  type: string
  inputBinding:
    prefix: --common_taxon
- id: ssu_min_len
  doc: 'minimum length of SSU 16S gene fragment to consider for classification (default:
    600)'
  type: string
  inputBinding:
    prefix: --ssu_min_len
- id: ssu_domain
  doc: 'percent identity threshold for accepting domain classification of SSU (default:
    83.68)'
  type: string
  inputBinding:
    prefix: --ssu_domain
- id: ssu_phylum
  doc: 'percent identity threshold for accepting phylum classification of SSU (default:
    86.35)'
  type: string
  inputBinding:
    prefix: --ssu_phylum
- id: ssu_class
  doc: 'percent identity threshold for accepting class classification of SSU (default:
    89.2)'
  type: string
  inputBinding:
    prefix: --ssu_class
- id: ssu_order
  doc: 'percent identity threshold for accepting order classification of SSU (default:
    92.25)'
  type: string
  inputBinding:
    prefix: --ssu_order
- id: ssu_family
  doc: 'percent identity threshold for accepting family classification of SSU (default:
    96.4)'
  type: string
  inputBinding:
    prefix: --ssu_family
- id: ssu_genus
  doc: 'percent identity threshold for accepting genus classification of SSU (default:
    98.7)'
  type: string
  inputBinding:
    prefix: --ssu_genus
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- ssu_erroneous
