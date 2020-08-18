class: CommandLineTool
id: ../../../mob_typer.cwl
inputs:
- id: in_file
  doc: Input assembly fasta file to process
  type: string
  inputBinding:
    prefix: --infile
- id: out_file
  doc: Output file to write results
  type: string
  inputBinding:
    prefix: --out_file
- id: analysis_dir
  doc: Analysis directory
  type: string
  inputBinding:
    prefix: --analysis_dir
- id: num_threads
  doc: Number of threads to be used
  type: string
  inputBinding:
    prefix: --num_threads
- id: sample_id
  doc: Sample Prefix for reports
  type: string
  inputBinding:
    prefix: --sample_id
- id: force
  doc: Overwrite existing directory
  type: boolean
  inputBinding:
    prefix: --force
- id: multi
  doc: Treat each sequence as an independant plasmid
  type: boolean
  inputBinding:
    prefix: --multi
- id: min_rep_evalue
  doc: Minimum evalue threshold for replicon blastn
  type: long
  inputBinding:
    prefix: --min_rep_evalue
- id: min_mob_evalue
  doc: Minimum evalue threshold for relaxase tblastn
  type: long
  inputBinding:
    prefix: --min_mob_evalue
- id: min_con_evalue
  doc: Minimum evalue threshold for contig blastn
  type: long
  inputBinding:
    prefix: --min_con_evalue
- id: min_length
  doc: Minimum length of contigs to classify
  type: long
  inputBinding:
    prefix: --min_length
- id: min_rep_ident
  doc: Minimum sequence identity for replicons
  type: long
  inputBinding:
    prefix: --min_rep_ident
- id: min_mob_ident
  doc: Minimum sequence identity for relaxases
  type: long
  inputBinding:
    prefix: --min_mob_ident
- id: min_con_ident
  doc: Minimum sequence identity for contigs
  type: long
  inputBinding:
    prefix: --min_con_ident
- id: min_rep_cov
  doc: Minimum percentage coverage of replicon query by input assembly
  type: long
  inputBinding:
    prefix: --min_rep_cov
- id: min_mob_cov
  doc: Minimum percentage coverage of relaxase query by input assembly
  type: long
  inputBinding:
    prefix: --min_mob_cov
- id: min_con_cov
  doc: Minimum percentage coverage of assembly contig by the plasmid reference database
    to be considered
  type: long
  inputBinding:
    prefix: --min_con_cov
- id: min_overlap
  doc: Minimum overlap of fragments
  type: long
  inputBinding:
    prefix: --min_overlap
- id: keep_tmp
  doc: Do not delete temporary file directory
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: debug
  doc: Show debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: plasmid_mash_db
  doc: Companion Mash database of reference database
  type: string
  inputBinding:
    prefix: --plasmid_mash_db
- id: plasmid_meta
  doc: MOB-cluster plasmid cluster formatted file matched to the reference plasmid
    db
  type: string
  inputBinding:
    prefix: --plasmid_meta
- id: plasmid_db_type
  doc: Blast database type of reference database
  type: string
  inputBinding:
    prefix: --plasmid_db_type
- id: plasmid_replicons
  doc: Fasta of plasmid replicons
  type: string
  inputBinding:
    prefix: --plasmid_replicons
- id: repetitive_mask
  doc: Fasta of known repetitive elements
  type: string
  inputBinding:
    prefix: --repetitive_mask
- id: plasmid_mob
  doc: Fasta of plasmid relaxases
  type: string
  inputBinding:
    prefix: --plasmid_mob
- id: plasmid_mpf
  doc: Fasta of known plasmid mate-pair proteins
  type: string
  inputBinding:
    prefix: --plasmid_mpf
- id: plasmid_or_it
  doc: Fasta of known plasmid oriT dna sequences
  type: string
  inputBinding:
    prefix: --plasmid_orit
- id: database_directory
  doc: Directory you want to use for your databases. If the databases are not already
    downloaded, they will be downloaded automatically. Defaults to /tmp/tmpck7ho0cl/lib/python3.8/site-
    packages/mob_suite/databases
  type: string
  inputBinding:
    prefix: --database_directory
- id: primary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: string
  inputBinding:
    prefix: --primary_cluster_dist
- id: secondary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: string
  inputBinding:
    prefix: --secondary_cluster_dist
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_typer
