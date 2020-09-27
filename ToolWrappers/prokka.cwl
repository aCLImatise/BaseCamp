class: CommandLineTool
id: prokka.cwl
inputs:
- id: in_citation
  doc: Print citation for referencing Prokka
  type: boolean
  inputBinding:
    prefix: --citation
- id: in_quiet
  doc: No screen output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: 'Debug mode: keep all temporary files (default OFF)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_db_dir
  doc: "[X]        Prokka database root folders (default '/usr/local/db')"
  type: boolean
  inputBinding:
    prefix: --dbdir
- id: in_list_db
  doc: List all configured databases
  type: boolean
  inputBinding:
    prefix: --listdb
- id: in_setup_db
  doc: Index all installed databases
  type: boolean
  inputBinding:
    prefix: --setupdb
- id: in_clean_db
  doc: Remove all database indices
  type: boolean
  inputBinding:
    prefix: --cleandb
- id: in_depends
  doc: List all software dependencies
  type: boolean
  inputBinding:
    prefix: --depends
- id: in_outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_force
  doc: Force overwriting existing output folder (default OFF)
  type: Directory
  inputBinding:
    prefix: --force
- id: in_prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: File
  inputBinding:
    prefix: --prefix
- id: in_add_genes
  doc: Add 'gene' features for each 'CDS' feature (default OFF)
  type: boolean
  inputBinding:
    prefix: --addgenes
- id: in_add_mrna
  doc: Add 'mRNA' features for each 'CDS' feature (default OFF)
  type: boolean
  inputBinding:
    prefix: --addmrna
- id: in_locus_tag
  doc: "[X]     Locus tag prefix [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --locustag
- id: in_increment
  doc: "[N]    Locus tag counter increment (default '1')"
  type: boolean
  inputBinding:
    prefix: --increment
- id: in_gff_ver
  doc: "[N]       GFF version (default '3')"
  type: boolean
  inputBinding:
    prefix: --gffver
- id: in_compliant
  doc: 'Force Genbank/ENA/DDJB compliance: --addgenes --mincontiglen 200 --centre
    XXX (default OFF)'
  type: boolean
  inputBinding:
    prefix: --compliant
- id: in_centre
  doc: "[X]       Sequencing centre ID. (default '')"
  type: boolean
  inputBinding:
    prefix: --centre
- id: in_acc_ver
  doc: "[N]       Version to put in Genbank file (default '1')"
  type: boolean
  inputBinding:
    prefix: --accver
- id: in_genus
  doc: "[X]        Genus name (default 'Genus')"
  type: boolean
  inputBinding:
    prefix: --genus
- id: in_species
  doc: "[X]      Species name (default 'species')"
  type: boolean
  inputBinding:
    prefix: --species
- id: in_strain
  doc: "[X]       Strain name (default 'strain')"
  type: boolean
  inputBinding:
    prefix: --strain
- id: in_plasmid
  doc: "[X]      Plasmid name or identifier (default '')"
  type: boolean
  inputBinding:
    prefix: --plasmid
- id: in_kingdom
  doc: "[X]      Annotation mode: Archaea|Bacteria|Mitochondria|Viruses (default 'Bacteria')"
  type: boolean
  inputBinding:
    prefix: --kingdom
- id: in_g_code
  doc: "[N]        Genetic code / Translation table (set if --kingdom is set) (default\
    \ '0')"
  type: boolean
  inputBinding:
    prefix: --gcode
- id: in_prodigal_tf
  doc: "[X]   Prodigal training file (default '')"
  type: boolean
  inputBinding:
    prefix: --prodigaltf
- id: in_gram
  doc: "[X]         Gram: -/neg +/pos (default '')"
  type: boolean
  inputBinding:
    prefix: --gram
- id: in_use_genus
  doc: Use genus-specific BLAST databases (needs --genus) (default OFF)
  type: boolean
  inputBinding:
    prefix: --usegenus
- id: in_proteins
  doc: "[X]     FASTA or GBK file to use as 1st priority (default '')"
  type: boolean
  inputBinding:
    prefix: --proteins
- id: in_hmms
  doc: "[X]         Trusted HMM to first annotate from (default '')"
  type: boolean
  inputBinding:
    prefix: --hmms
- id: in_meta_genome
  doc: Improve gene predictions for highly fragmented genomes (default OFF)
  type: boolean
  inputBinding:
    prefix: --metagenome
- id: in_raw_product
  doc: Do not clean up /product annotation (default OFF)
  type: boolean
  inputBinding:
    prefix: --rawproduct
- id: in_cds_rna_olap
  doc: Allow [tr]RNA to overlap CDS (default OFF)
  type: boolean
  inputBinding:
    prefix: --cdsrnaolap
- id: in_evalue
  doc: "[n.n]     Similarity e-value cut-off (default '1e-09')"
  type: boolean
  inputBinding:
    prefix: --evalue
- id: in_coverage
  doc: "[n.n]   Minimum coverage on query protein (default '80')"
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_cpus
  doc: "[N]         Number of CPUs to use [0=all] (default '8')"
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_fast
  doc: Fast mode - only use basic BLASTP databases (default OFF)
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_no_an_no
  doc: For CDS just set /product="unannotated protein" (default OFF)
  type: boolean
  inputBinding:
    prefix: --noanno
- id: in_min_conti_glen
  doc: "[N] Minimum contig size [NCBI needs 200] (default '1')"
  type: boolean
  inputBinding:
    prefix: --mincontiglen
- id: in_rf_am
  doc: Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')
  type: boolean
  inputBinding:
    prefix: --rfam
- id: in_no_rrna
  doc: Don't run rRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --norrna
- id: in_not_rna
  doc: Don't run tRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --notrna
- id: in_rn_ammer
  doc: Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)
  type: boolean
  inputBinding:
    prefix: --rnammer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_force
  doc: Force overwriting existing output folder (default OFF)
  type: Directory
  outputBinding:
    glob: $(inputs.in_force)
- id: out_prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- prokka
