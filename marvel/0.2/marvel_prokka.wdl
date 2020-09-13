version 1.0

task MarvelProkka {
  input {
    Boolean? citation
    Boolean? quiet
    Boolean? debug
    Boolean? db_dir
    Boolean? list_db
    Boolean? setup_db
    Boolean? clean_db
    Boolean? depends
    Directory? outdir
    Directory? force
    File? prefix
    Boolean? add_genes
    Boolean? add_mrna
    Boolean? locus_tag
    Boolean? increment
    Boolean? gff_ver
    Boolean? compliant
    Boolean? centre
    Boolean? acc_ver
    Boolean? genus
    Boolean? species
    Boolean? strain
    Boolean? plasmid
    Boolean? kingdom
    Boolean? g_code
    Boolean? prodigal_tf
    Boolean? gram
    Boolean? use_genus
    Boolean? proteins
    Boolean? hmms
    Boolean? meta_genome
    Boolean? raw_product
    Boolean? cds_rna_olap
    Boolean? evalue
    Boolean? coverage
    Boolean? cpus
    Boolean? fast
    Boolean? no_an_no
    Boolean? min_conti_glen
    Boolean? rf_am
    Boolean? no_rrna
    Boolean? not_rna
    Boolean? rn_ammer
  }
  command <<<
    marvel_prokka \
      ~{if (citation) then "--citation" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (db_dir) then "--dbdir" else ""} \
      ~{if (list_db) then "--listdb" else ""} \
      ~{if (setup_db) then "--setupdb" else ""} \
      ~{if (clean_db) then "--cleandb" else ""} \
      ~{if (depends) then "--depends" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (add_genes) then "--addgenes" else ""} \
      ~{if (add_mrna) then "--addmrna" else ""} \
      ~{if (locus_tag) then "--locustag" else ""} \
      ~{if (increment) then "--increment" else ""} \
      ~{if (gff_ver) then "--gffver" else ""} \
      ~{if (compliant) then "--compliant" else ""} \
      ~{if (centre) then "--centre" else ""} \
      ~{if (acc_ver) then "--accver" else ""} \
      ~{if (genus) then "--genus" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (plasmid) then "--plasmid" else ""} \
      ~{if (kingdom) then "--kingdom" else ""} \
      ~{if (g_code) then "--gcode" else ""} \
      ~{if (prodigal_tf) then "--prodigaltf" else ""} \
      ~{if (gram) then "--gram" else ""} \
      ~{if (use_genus) then "--usegenus" else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if (hmms) then "--hmms" else ""} \
      ~{if (meta_genome) then "--metagenome" else ""} \
      ~{if (raw_product) then "--rawproduct" else ""} \
      ~{if (cds_rna_olap) then "--cdsrnaolap" else ""} \
      ~{if (evalue) then "--evalue" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (no_an_no) then "--noanno" else ""} \
      ~{if (min_conti_glen) then "--mincontiglen" else ""} \
      ~{if (rf_am) then "--rfam" else ""} \
      ~{if (no_rrna) then "--norrna" else ""} \
      ~{if (not_rna) then "--notrna" else ""} \
      ~{if (rn_ammer) then "--rnammer" else ""}
  >>>
  parameter_meta {
    citation: "Print citation for referencing Prokka"
    quiet: "No screen output (default OFF)"
    debug: "Debug mode: keep all temporary files (default OFF)"
    db_dir: "[X]        Prokka database root folders (default '/usr/local/bin/../db')"
    list_db: "List all configured databases"
    setup_db: "Index all installed databases"
    clean_db: "Remove all database indices"
    depends: "List all software dependencies"
    outdir: "[X]       Output folder [auto] (default '')"
    force: "Force overwriting existing output folder (default OFF)"
    prefix: "[X]       Filename output prefix [auto] (default '')"
    add_genes: "Add 'gene' features for each 'CDS' feature (default OFF)"
    add_mrna: "Add 'mRNA' features for each 'CDS' feature (default OFF)"
    locus_tag: "[X]     Locus tag prefix [auto] (default '')"
    increment: "[N]    Locus tag counter increment (default '1')"
    gff_ver: "[N]       GFF version (default '3')"
    compliant: "Force Genbank/ENA/DDJB compliance: --addgenes --mincontiglen 200 --centre XXX (default OFF)"
    centre: "[X]       Sequencing centre ID. (default '')"
    acc_ver: "[N]       Version to put in Genbank file (default '1')"
    genus: "[X]        Genus name (default 'Genus')"
    species: "[X]      Species name (default 'species')"
    strain: "[X]       Strain name (default 'strain')"
    plasmid: "[X]      Plasmid name or identifier (default '')"
    kingdom: "[X]      Annotation mode: Archaea|Bacteria|Mitochondria|Viruses (default 'Bacteria')"
    g_code: "[N]        Genetic code / Translation table (set if --kingdom is set) (default '0')"
    prodigal_tf: "[X]   Prodigal training file (default '')"
    gram: "[X]         Gram: -/neg +/pos (default '')"
    use_genus: "Use genus-specific BLAST databases (needs --genus) (default OFF)"
    proteins: "[X]     FASTA or GBK file to use as 1st priority (default '')"
    hmms: "[X]         Trusted HMM to first annotate from (default '')"
    meta_genome: "Improve gene predictions for highly fragmented genomes (default OFF)"
    raw_product: "Do not clean up /product annotation (default OFF)"
    cds_rna_olap: "Allow [tr]RNA to overlap CDS (default OFF)"
    evalue: "[n.n]     Similarity e-value cut-off (default '1e-09')"
    coverage: "[n.n]   Minimum coverage on query protein (default '80')"
    cpus: "[N]         Number of CPUs to use [0=all] (default '8')"
    fast: "Fast mode - only use basic BLASTP databases (default OFF)"
    no_an_no: "For CDS just set /product=\\\"unannotated protein\\\" (default OFF)"
    min_conti_glen: "[N] Minimum contig size [NCBI needs 200] (default '1')"
    rf_am: "Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')"
    no_rrna: "Don't run rRNA search (default OFF)"
    not_rna: "Don't run tRNA search (default OFF)"
    rn_ammer: "Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_force = "${in_force}"
    File out_prefix = "${in_prefix}"
  }
}