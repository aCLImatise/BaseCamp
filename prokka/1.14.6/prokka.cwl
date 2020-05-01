#!/usr/bin/env cwl-runner

baseCommand:
- prokka
class: CommandLineTool
cwlVersion: v1.0
id: prokka
inputs:
- doc: ''
  id: contigs_fast_a
  inputBinding:
    position: 0
  type: string
- doc: Print citation for referencing Prokka
  id: citation
  inputBinding:
    prefix: --citation
  type: boolean
- doc: No screen output (default OFF)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Debug mode: keep all temporary files (default OFF)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: "[X]        Prokka database root folders (default '/tmp/tmp_z0bvsrs/db')"
  id: db_dir
  inputBinding:
    prefix: --dbdir
  type: boolean
- doc: List all configured databases
  id: list_db
  inputBinding:
    prefix: --listdb
  type: boolean
- doc: Index all installed databases
  id: setup_db
  inputBinding:
    prefix: --setupdb
  type: boolean
- doc: Remove all database indices
  id: clean_db
  inputBinding:
    prefix: --cleandb
  type: boolean
- doc: List all software dependencies
  id: depends
  inputBinding:
    prefix: --depends
  type: boolean
- doc: "[X]       Output folder [auto] (default '')"
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: Force overwriting existing output folder (default OFF)
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: "[X]       Filename output prefix [auto] (default '')"
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: Add 'gene' features for each 'CDS' feature (default OFF)
  id: add_genes
  inputBinding:
    prefix: --addgenes
  type: boolean
- doc: Add 'mRNA' features for each 'CDS' feature (default OFF)
  id: add_mrna
  inputBinding:
    prefix: --addmrna
  type: boolean
- doc: "[X]     Locus tag prefix [auto] (default '')"
  id: locus_tag
  inputBinding:
    prefix: --locustag
  type: boolean
- doc: "[N]    Locus tag counter increment (default '1')"
  id: increment
  inputBinding:
    prefix: --increment
  type: boolean
- doc: "[N]       GFF version (default '3')"
  id: gff_ver
  inputBinding:
    prefix: --gffver
  type: boolean
- doc: 'Force Genbank/ENA/DDJB compliance: --addgenes --mincontiglen 200 --centre
    XXX (default OFF)'
  id: compliant
  inputBinding:
    prefix: --compliant
  type: boolean
- doc: "[X]       Sequencing centre ID. (default '')"
  id: centre
  inputBinding:
    prefix: --centre
  type: boolean
- doc: "[N]       Version to put in Genbank file (default '1')"
  id: acc_ver
  inputBinding:
    prefix: --accver
  type: boolean
- doc: "[X]        Genus name (default 'Genus')"
  id: genus
  inputBinding:
    prefix: --genus
  type: boolean
- doc: "[X]      Species name (default 'species')"
  id: species
  inputBinding:
    prefix: --species
  type: boolean
- doc: "[X]       Strain name (default 'strain')"
  id: strain
  inputBinding:
    prefix: --strain
  type: boolean
- doc: "[X]      Plasmid name or identifier (default '')"
  id: plasmid
  inputBinding:
    prefix: --plasmid
  type: boolean
- doc: "[X]      Annotation mode: Archaea|Bacteria|Mitochondria|Viruses (default 'Bacteria')"
  id: kingdom
  inputBinding:
    prefix: --kingdom
  type: boolean
- doc: "[N]        Genetic code / Translation table (set if --kingdom is set) (default\
    \ '0')"
  id: g_code
  inputBinding:
    prefix: --gcode
  type: boolean
- doc: "[X]   Prodigal training file (default '')"
  id: prodigal_tf
  inputBinding:
    prefix: --prodigaltf
  type: boolean
- doc: "[X]         Gram: -/neg +/pos (default '')"
  id: gram
  inputBinding:
    prefix: --gram
  type: boolean
- doc: Use genus-specific BLAST databases (needs --genus) (default OFF)
  id: use_genus
  inputBinding:
    prefix: --usegenus
  type: boolean
- doc: "[X]     FASTA or GBK file to use as 1st priority (default '')"
  id: proteins
  inputBinding:
    prefix: --proteins
  type: boolean
- doc: "[X]         Trusted HMM to first annotate from (default '')"
  id: hmms
  inputBinding:
    prefix: --hmms
  type: boolean
- doc: Improve gene predictions for highly fragmented genomes (default OFF)
  id: meta_genome
  inputBinding:
    prefix: --metagenome
  type: boolean
- doc: Do not clean up /product annotation (default OFF)
  id: raw_product
  inputBinding:
    prefix: --rawproduct
  type: boolean
- doc: Allow [tr]RNA to overlap CDS (default OFF)
  id: cds_rna_olap
  inputBinding:
    prefix: --cdsrnaolap
  type: boolean
- doc: "[n.n]     Similarity e-value cut-off (default '1e-09')"
  id: evalue
  inputBinding:
    prefix: --evalue
  type: boolean
- doc: "[n.n]   Minimum coverage on query protein (default '80')"
  id: coverage
  inputBinding:
    prefix: --coverage
  type: boolean
- doc: "[N]         Number of CPUs to use [0=all] (default '8')"
  id: cpus
  inputBinding:
    prefix: --cpus
  type: boolean
- doc: Fast mode - only use basic BLASTP databases (default OFF)
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: For CDS just set /product="unannotated protein" (default OFF)
  id: no_an_no
  inputBinding:
    prefix: --noanno
  type: boolean
- doc: "[N] Minimum contig size [NCBI needs 200] (default '1')"
  id: min_conti_glen
  inputBinding:
    prefix: --mincontiglen
  type: boolean
- doc: Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')
  id: rf_am
  inputBinding:
    prefix: --rfam
  type: boolean
- doc: Don't run rRNA search (default OFF)
  id: no_rrna
  inputBinding:
    prefix: --norrna
  type: boolean
- doc: Don't run tRNA search (default OFF)
  id: not_rna
  inputBinding:
    prefix: --notrna
  type: boolean
- doc: Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)
  id: rn_ammer
  inputBinding:
    prefix: --rnammer
  type: boolean
