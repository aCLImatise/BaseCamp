class: CommandLineTool
id: refinem_taxon_profile.cwl
inputs:
- id: genome_prot_dir
  doc: directory containing amino acid genes for each genome
  type: string
  inputBinding:
    position: 0
- id: scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 1
- id: db_file
  doc: DIAMOND database of reference genomes
  type: string
  inputBinding:
    position: 2
- id: taxonomy_file
  doc: taxonomic assignment of each reference genomes
  type: string
  inputBinding:
    position: 3
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 4
- id: per_to_classify
  doc: 'minimum percentage of genes to assign a scaffold to a taxonomic group (default:
    20.0)'
  type: string
  inputBinding:
    prefix: --per_to_classify
- id: evalue
  doc: 'e-value of valid hits (default: 0.001)'
  type: string
  inputBinding:
    prefix: --evalue
- id: per_identity
  doc: 'percent identity of valid hits (default: 30.0)'
  type: string
  inputBinding:
    prefix: --per_identity
- id: per_aln_len
  doc: 'minimum percent coverage of query sequence for reporting an alignment (default:
    50.0)'
  type: string
  inputBinding:
    prefix: --per_aln_len
- id: protein_ext
  doc: 'extension of amino acid gene files (other files in directory are ignored)
    (default: faa)'
  type: string
  inputBinding:
    prefix: --protein_ext
- id: tmpdir
  doc: 'specify alternative directory for temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
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
- taxon_profile
