class: CommandLineTool
id: WhatsGNU_main.py.cwl
inputs:
- id: query_faa
  doc: Query protein FASTA file/s to analyze (.faa)
  type: string
  inputBinding:
    position: 0
- id: mk_database
  doc: you have to provide path to faa file or a folder of multiple faa files for
    compression
  type: string
  inputBinding:
    prefix: --mkdatabase
- id: database
  doc: you have to provide path to your compressed database
  type: string
  inputBinding:
    prefix: --database
- id: pickle
  doc: Save database in pickle format [Default only txt file]
  type: boolean
  inputBinding:
    prefix: --pickle
- id: sql
  doc: Save database in SQL format for large Databases [Default only txt file]
  type: boolean
  inputBinding:
    prefix: --sql
- id: r
  doc: '[ROARY_CLUSTERED_PROTEINS], --roary_clustered_proteins [ROARY_CLUSTERED_PROTEINS]
    clustered_proteins output file from roary to be used with -m'
  type: boolean
  inputBinding:
    prefix: -r
- id: database_mode
  doc: select a mode from 'ortholog' or 'basic' to be used with -d
  type: string
  inputBinding:
    prefix: --database_mode
- id: ri
  doc: '[RARITY_INDEX], --rarity_index [RARITY_INDEX] select an ortholog variant rarity
    index (OVRI) cutoff value in range (0-1)[0.045] for ortholog mode'
  type: boolean
  inputBinding:
    prefix: -ri
- id: output_folder
  doc: 'Database output prefix to be created for results (default: timestamped WhatsGNU_results
    in the current directory)'
  type: string
  inputBinding:
    prefix: --output_folder
- id: force
  doc: 'Force overwriting existing results folder assigned with -o (default: off)'
  type: boolean
  inputBinding:
    prefix: --force
- id: prefix
  doc: 'Prefix for output compressed database (default: WhatsGNU_compressed_database)'
  type: string
  inputBinding:
    prefix: --prefix
- id: top_genomes
  doc: create a file of top 10 genomes with hits
  type: boolean
  inputBinding:
    prefix: --topgenomes
- id: strain_hits
  doc: check how many hits you get from a particular strain,it has to be used with
    -t
  type: string
  inputBinding:
    prefix: --strainhits
- id: metadata
  doc: get the metadata composition of your hits, use the metadata_frequency.csv file
    produced by the WhatsGNU customizer script
  type: string
  inputBinding:
    prefix: --metadata
- id: ids_hits
  doc: create a file of each protein with locus_tags (ids) of all hits from the database,
    large file (~ 1 Gb for 3000 pts)
  type: boolean
  inputBinding:
    prefix: --ids_hits
- id: faa_gnu_0
  doc: get a fasta (.faa) file of all proteins with GNU score of zero
  type: boolean
  inputBinding:
    prefix: --faa_GNU_0
- id: blastp
  doc: run blastp on the proteins with GNU score of zero and modify the report with
    ortholog_info, blastp has to be installed
  type: boolean
  inputBinding:
    prefix: --blastp
- id: output_blastp
  doc: get the output report of blastp run, it has to be used with -b
  type: boolean
  inputBinding:
    prefix: --output_blastp
- id: w
  doc: '[PERCENT_IDENTITY], --percent_identity [PERCENT_IDENTITY] select a blastp
    percent identity cutoff value [80], range(0,100)'
  type: boolean
  inputBinding:
    prefix: -w
- id: c
  doc: '[PERCENT_COVERAGE], --percent_coverage [PERCENT_COVERAGE] select a blastp
    percent coverage cutoff value [80], range(0,100)'
  type: boolean
  inputBinding:
    prefix: -c
- id: quiet
  doc: No screen output [default OFF]
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- WhatsGNU_main.py
