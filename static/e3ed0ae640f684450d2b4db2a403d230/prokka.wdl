version 1.0

task Prokka {
  input {
    Boolean? citation
    Boolean? quiet
    Boolean? debug
    Boolean? db_dir
    Boolean? list_db
    Boolean? setup_db
    Boolean? clean_db
    Boolean? depends
    Boolean? outdir
    Boolean? force
    Boolean? prefix
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
    String contigs_dot_fast_a
  }
  command <<<
    prokka \
      ~{contigs_dot_fast_a} \
      ~{true="--citation" false="" citation} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{true="--dbdir" false="" db_dir} \
      ~{true="--listdb" false="" list_db} \
      ~{true="--setupdb" false="" setup_db} \
      ~{true="--cleandb" false="" clean_db} \
      ~{true="--depends" false="" depends} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--force" false="" force} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--addgenes" false="" add_genes} \
      ~{true="--addmrna" false="" add_mrna} \
      ~{true="--locustag" false="" locus_tag} \
      ~{true="--increment" false="" increment} \
      ~{true="--gffver" false="" gff_ver} \
      ~{true="--compliant" false="" compliant} \
      ~{true="--centre" false="" centre} \
      ~{true="--accver" false="" acc_ver} \
      ~{true="--genus" false="" genus} \
      ~{true="--species" false="" species} \
      ~{true="--strain" false="" strain} \
      ~{true="--plasmid" false="" plasmid} \
      ~{true="--kingdom" false="" kingdom} \
      ~{true="--gcode" false="" g_code} \
      ~{true="--prodigaltf" false="" prodigal_tf} \
      ~{true="--gram" false="" gram} \
      ~{true="--usegenus" false="" use_genus} \
      ~{true="--proteins" false="" proteins} \
      ~{true="--hmms" false="" hmms} \
      ~{true="--metagenome" false="" meta_genome} \
      ~{true="--rawproduct" false="" raw_product} \
      ~{true="--cdsrnaolap" false="" cds_rna_olap} \
      ~{true="--evalue" false="" evalue} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--cpus" false="" cpus} \
      ~{true="--fast" false="" fast} \
      ~{true="--noanno" false="" no_an_no} \
      ~{true="--mincontiglen" false="" min_conti_glen} \
      ~{true="--rfam" false="" rf_am} \
      ~{true="--norrna" false="" no_rrna} \
      ~{true="--notrna" false="" not_rna} \
      ~{true="--rnammer" false="" rn_ammer}
  >>>
  parameter_meta {
    citation: "Print citation for referencing Prokka"
    quiet: "No screen output (default OFF)"
    debug: "Debug mode: keep all temporary files (default OFF)"
    db_dir: "[X]        Prokka database root folders (default '/tmp/tmp7h3k3e00/db')"
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
    no_an_no: "For CDS just set /product=\"unannotated protein\" (default OFF)"
    min_conti_glen: "[N] Minimum contig size [NCBI needs 200] (default '1')"
    rf_am: "Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')"
    no_rrna: "Don't run rRNA search (default OFF)"
    not_rna: "Don't run tRNA search (default OFF)"
    rn_ammer: "Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)"
    contigs_dot_fast_a: ""
  }
}