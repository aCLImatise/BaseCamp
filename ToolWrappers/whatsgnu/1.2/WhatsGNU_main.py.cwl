class: CommandLineTool
id: WhatsGNU_main.py.cwl
inputs:
- id: in_mk_database
  doc: "you have to provide path to faa file or a folder of\nmultiple faa files for\
    \ compression"
  type: File
  inputBinding:
    prefix: --mkdatabase
- id: in_database
  doc: you have to provide path to your compressed database
  type: File
  inputBinding:
    prefix: --database
- id: in_pickle
  doc: Save database in pickle format [Default only txt file]
  type: boolean
  inputBinding:
    prefix: --pickle
- id: in_sql
  doc: "Save database in SQL format for large Databases\n[Default only txt file]"
  type: boolean
  inputBinding:
    prefix: --sql
- id: in_clusteredproteins_output_file
  doc: "[ROARY_CLUSTERED_PROTEINS], --roary_clustered_proteins [ROARY_CLUSTERED_PROTEINS]\n\
    clustered_proteins output file from roary to be used\nwith -m"
  type: File
  inputBinding:
    prefix: -r
- id: in_database_mode
  doc: "select a mode from 'ortholog' or 'basic' to be used\nwith -d"
  type: string
  inputBinding:
    prefix: --database_mode
- id: in_ri
  doc: "[RARITY_INDEX], --rarity_index [RARITY_INDEX]\nselect an ortholog variant\
    \ rarity index (OVRI) cutoff\nvalue in range (0-1)[0.045] for ortholog mode"
  type: boolean
  inputBinding:
    prefix: -ri
- id: in_output_folder
  doc: "Database output prefix to be created for results\n(default: timestamped WhatsGNU_results\
    \ in the current\ndirectory)"
  type: Directory
  inputBinding:
    prefix: --output_folder
- id: in_force
  doc: "Force overwriting existing results folder assigned\nwith -o (default: off)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_prefix
  doc: "Prefix for output compressed database (default:\nWhatsGNU_compressed_database)"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_top_genomes
  doc: create a file of top 10 genomes with hits
  type: boolean
  inputBinding:
    prefix: --topgenomes
- id: in_strain_hits
  doc: "check how many hits you get from a particular\nstrain,it has to be used with\
    \ -t"
  type: string
  inputBinding:
    prefix: --strainhits
- id: in_metadata
  doc: "get the metadata composition of your hits, use the\nmetadata_frequency.csv\
    \ file produced by the WhatsGNU\ncustomizer script"
  type: File
  inputBinding:
    prefix: --metadata
- id: in_ids_hits
  doc: "create a file of each protein with locus_tags (ids) of\nall hits from the\
    \ database, large file (~ 1 Gb for\n3000 pts)"
  type: boolean
  inputBinding:
    prefix: --ids_hits
- id: in_faa_gnu_zero
  doc: "get a fasta (.faa) file of all proteins with GNU score\nof zero"
  type: boolean
  inputBinding:
    prefix: --faa_GNU_0
- id: in_blastp
  doc: "run blastp on the proteins with GNU score of zero and\nmodify the report with\
    \ ortholog_info, blastp has to be\ninstalled"
  type: boolean
  inputBinding:
    prefix: --blastp
- id: in_output_blastp
  doc: "get the output report of blastp run, it has to be used\nwith -b"
  type: boolean
  inputBinding:
    prefix: --output_blastp
- id: in_select_blastp_percent_cutoff_value
  doc: "[PERCENT_IDENTITY], --percent_identity [PERCENT_IDENTITY]\nselect a blastp\
    \ percent identity cutoff value [80],\nrange(0,100)"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_select_blastp_percent_coverage_value
  doc: "[PERCENT_COVERAGE], --percent_coverage [PERCENT_COVERAGE]\nselect a blastp\
    \ percent coverage cutoff value [80],\nrange(0,100)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_quiet
  doc: No screen output [default OFF]
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clusteredproteins_output_file
  doc: "[ROARY_CLUSTERED_PROTEINS], --roary_clustered_proteins [ROARY_CLUSTERED_PROTEINS]\n\
    clustered_proteins output file from roary to be used\nwith -m"
  type: File
  outputBinding:
    glob: $(inputs.in_clusteredproteins_output_file)
- id: out_output_folder
  doc: "Database output prefix to be created for results\n(default: timestamped WhatsGNU_results\
    \ in the current\ndirectory)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- WhatsGNU_main.py
