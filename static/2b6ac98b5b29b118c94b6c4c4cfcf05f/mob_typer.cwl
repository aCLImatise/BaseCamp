class: CommandLineTool
id: mob_typer.cwl
inputs:
- id: outdir
  doc: Output Directory to put results
  type: string
  inputBinding:
    prefix: --outdir
- id: in_file
  doc: Input assembly fasta file to process
  type: string
  inputBinding:
    prefix: --infile
- id: num_threads
  doc: Number of threads to be used
  type: string
  inputBinding:
    prefix: --num_threads
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
- id: min_ori_evalue
  doc: Minimum evalue threshold for oriT elements blastn
  type: long
  inputBinding:
    prefix: --min_ori_evalue
- id: min_mpf_evalue
  doc: Minimum evalue threshold for mpf elements blastn
  type: long
  inputBinding:
    prefix: --min_mpf_evalue
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
- id: min_ori_ident
  doc: Minimum sequence identity for oriT elements
  type: long
  inputBinding:
    prefix: --min_ori_ident
- id: min_mpf_ident
  doc: Minimum sequence identity for mpf elements
  type: long
  inputBinding:
    prefix: --min_mpf_ident
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
- id: min_ori_cov
  doc: Minimum percentage coverage of oriT
  type: long
  inputBinding:
    prefix: --min_ori_cov
- id: min_mpf_cov
  doc: Minimum percentage coverage of mpf
  type: long
  inputBinding:
    prefix: --min_mpf_cov
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
- id: plasmid_replicons
  doc: Fasta of plasmid replicons
  type: string
  inputBinding:
    prefix: --plasmid_replicons
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
- id: host_range_detailed
  doc: Complete host range report with phylogeny stats
  type: boolean
  inputBinding:
    prefix: --host_range_detailed
- id: database_directory
  doc: Directory you want to use for your databases. If the databases are not already
    downloaded, they will be downloaded automatically. Defaults to /tmp/tmpcsr8zpp7/lib/python3.6/site-
    packages/mob_suite/databases. If you change this from the default, will override
    --plasmid_mash_db, --plasmid_replicons, --plasmid_mob, --plasmid_mpf, and --plasmid_orit
  type: string
  inputBinding:
    prefix: --database_directory
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_typer
