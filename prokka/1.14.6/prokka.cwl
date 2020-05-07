class: CommandLineTool
id: prokka.cwl
inputs:
- id: contigs_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: citation
  doc: Print citation for referencing Prokka
  type: boolean
  inputBinding:
    prefix: --citation
- id: quiet
  doc: No screen output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: 'Debug mode: keep all temporary files (default OFF)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: db_dir
  doc: "[X]        Prokka database root folders (default '/tmp/tmp_z0bvsrs/db')"
  type: boolean
  inputBinding:
    prefix: --dbdir
- id: list_db
  doc: List all configured databases
  type: boolean
  inputBinding:
    prefix: --listdb
- id: setup_db
  doc: Index all installed databases
  type: boolean
  inputBinding:
    prefix: --setupdb
- id: clean_db
  doc: Remove all database indices
  type: boolean
  inputBinding:
    prefix: --cleandb
- id: depends
  doc: List all software dependencies
  type: boolean
  inputBinding:
    prefix: --depends
- id: outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --outdir
- id: force
  doc: Force overwriting existing output folder (default OFF)
  type: boolean
  inputBinding:
    prefix: --force
- id: prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --prefix
- id: add_genes
  doc: Add 'gene' features for each 'CDS' feature (default OFF)
  type: boolean
  inputBinding:
    prefix: --addgenes
- id: add_mrna
  doc: Add 'mRNA' features for each 'CDS' feature (default OFF)
  type: boolean
  inputBinding:
    prefix: --addmrna
- id: locus_tag
  doc: "[X]     Locus tag prefix [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --locustag
- id: increment
  doc: "[N]    Locus tag counter increment (default '1')"
  type: boolean
  inputBinding:
    prefix: --increment
- id: gff_ver
  doc: "[N]       GFF version (default '3')"
  type: boolean
  inputBinding:
    prefix: --gffver
- id: compliant
  doc: 'Force Genbank/ENA/DDJB compliance: --addgenes --mincontiglen 200 --centre
    XXX (default OFF)'
  type: boolean
  inputBinding:
    prefix: --compliant
- id: centre
  doc: "[X]       Sequencing centre ID. (default '')"
  type: boolean
  inputBinding:
    prefix: --centre
- id: acc_ver
  doc: "[N]       Version to put in Genbank file (default '1')"
  type: boolean
  inputBinding:
    prefix: --accver
- id: genus
  doc: "[X]        Genus name (default 'Genus')"
  type: boolean
  inputBinding:
    prefix: --genus
- id: species
  doc: "[X]      Species name (default 'species')"
  type: boolean
  inputBinding:
    prefix: --species
- id: strain
  doc: "[X]       Strain name (default 'strain')"
  type: boolean
  inputBinding:
    prefix: --strain
- id: plasmid
  doc: "[X]      Plasmid name or identifier (default '')"
  type: boolean
  inputBinding:
    prefix: --plasmid
- id: kingdom
  doc: "[X]      Annotation mode: Archaea|Bacteria|Mitochondria|Viruses (default 'Bacteria')"
  type: boolean
  inputBinding:
    prefix: --kingdom
- id: g_code
  doc: "[N]        Genetic code / Translation table (set if --kingdom is set) (default\
    \ '0')"
  type: boolean
  inputBinding:
    prefix: --gcode
- id: prodigal_tf
  doc: "[X]   Prodigal training file (default '')"
  type: boolean
  inputBinding:
    prefix: --prodigaltf
- id: gram
  doc: "[X]         Gram: -/neg +/pos (default '')"
  type: boolean
  inputBinding:
    prefix: --gram
- id: use_genus
  doc: Use genus-specific BLAST databases (needs --genus) (default OFF)
  type: boolean
  inputBinding:
    prefix: --usegenus
- id: proteins
  doc: "[X]     FASTA or GBK file to use as 1st priority (default '')"
  type: boolean
  inputBinding:
    prefix: --proteins
- id: hmms
  doc: "[X]         Trusted HMM to first annotate from (default '')"
  type: boolean
  inputBinding:
    prefix: --hmms
- id: meta_genome
  doc: Improve gene predictions for highly fragmented genomes (default OFF)
  type: boolean
  inputBinding:
    prefix: --metagenome
- id: raw_product
  doc: Do not clean up /product annotation (default OFF)
  type: boolean
  inputBinding:
    prefix: --rawproduct
- id: cds_rna_olap
  doc: Allow [tr]RNA to overlap CDS (default OFF)
  type: boolean
  inputBinding:
    prefix: --cdsrnaolap
- id: evalue
  doc: "[n.n]     Similarity e-value cut-off (default '1e-09')"
  type: boolean
  inputBinding:
    prefix: --evalue
- id: coverage
  doc: "[n.n]   Minimum coverage on query protein (default '80')"
  type: boolean
  inputBinding:
    prefix: --coverage
- id: cpus
  doc: "[N]         Number of CPUs to use [0=all] (default '8')"
  type: boolean
  inputBinding:
    prefix: --cpus
- id: fast
  doc: Fast mode - only use basic BLASTP databases (default OFF)
  type: boolean
  inputBinding:
    prefix: --fast
- id: no_an_no
  doc: For CDS just set /product="unannotated protein" (default OFF)
  type: boolean
  inputBinding:
    prefix: --noanno
- id: min_conti_glen
  doc: "[N] Minimum contig size [NCBI needs 200] (default '1')"
  type: boolean
  inputBinding:
    prefix: --mincontiglen
- id: rf_am
  doc: Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')
  type: boolean
  inputBinding:
    prefix: --rfam
- id: no_rrna
  doc: Don't run rRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --norrna
- id: not_rna
  doc: Don't run tRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --notrna
- id: rn_ammer
  doc: Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)
  type: boolean
  inputBinding:
    prefix: --rnammer
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka
