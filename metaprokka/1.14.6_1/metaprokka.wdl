version 1.0

task Metaprokka {
  input {
    Boolean? citation
    Boolean? quiet
    Boolean? debug
    Boolean? db_dir
    Boolean? list_db
    Boolean? outdir
    Boolean? force
    Boolean? prefix
    Boolean? locus_tag
    Boolean? increment
    Boolean? gff_ver
    Boolean? prodigal_tf
    Boolean? proteins
    Boolean? hmms
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
    Boolean? do_trna
    Boolean? rn_ammer
    Boolean? do_tbl_two_asn
    String contigs_dot_fast_a
  }
  command <<<
    metaprokka \
      ~{contigs_dot_fast_a} \
      ~{true="--citation" false="" citation} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{true="--dbdir" false="" db_dir} \
      ~{true="--listdb" false="" list_db} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--force" false="" force} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--locustag" false="" locus_tag} \
      ~{true="--increment" false="" increment} \
      ~{true="--gffver" false="" gff_ver} \
      ~{true="--prodigaltf" false="" prodigal_tf} \
      ~{true="--proteins" false="" proteins} \
      ~{true="--hmms" false="" hmms} \
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
      ~{true="--dotrna" false="" do_trna} \
      ~{true="--rnammer" false="" rn_ammer} \
      ~{true="--dotbl2asn" false="" do_tbl_two_asn}
  >>>
  parameter_meta {
    citation: "Print citation for referencing Prokka"
    quiet: "No screen output (default OFF)"
    debug: "Debug mode: keep all temporary files (default OFF)"
    db_dir: "[X]        Prokka database root folders (default '/tmp/tmplruwoux2/db')"
    list_db: "List all configured databases"
    outdir: "[X]       Output folder [auto] (default '')"
    force: "Force overwriting existing output folder (default OFF)"
    prefix: "[X]       Filename output prefix [auto] (default '')"
    locus_tag: "[X]     Locus tag prefix [auto] (default '')"
    increment: "[N]    Locus tag counter increment (default '1')"
    gff_ver: "[N]       GFF version (default '3')"
    prodigal_tf: "[X]   Prodigal training file (default '')"
    proteins: "[X]     FASTA or GBK file to use as 1st priority (default '')"
    hmms: "[X]         Trusted HMM to first annotate from (default '')"
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
    do_trna: "Run tRNA search (default OFF)"
    rn_ammer: "Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)"
    do_tbl_two_asn: "Run tbl2asn (default OFF)"
    contigs_dot_fast_a: ""
  }
}