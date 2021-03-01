version 1.0

task Metaprokka {
  input {
    Boolean? citation
    Boolean? quiet
    Boolean? debug
    Boolean? db_dir
    Boolean? list_db
    Directory? outdir
    Directory? force
    File? prefix
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
  }
  command <<<
    metaprokka \
      ~{if (citation) then "--citation" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (db_dir) then "--dbdir" else ""} \
      ~{if (list_db) then "--listdb" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (locus_tag) then "--locustag" else ""} \
      ~{if (increment) then "--increment" else ""} \
      ~{if (gff_ver) then "--gffver" else ""} \
      ~{if (prodigal_tf) then "--prodigaltf" else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if (hmms) then "--hmms" else ""} \
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
      ~{if (do_trna) then "--dotrna" else ""} \
      ~{if (rn_ammer) then "--rnammer" else ""} \
      ~{if (do_tbl_two_asn) then "--dotbl2asn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    citation: "Print citation for referencing Prokka"
    quiet: "No screen output (default OFF)"
    debug: "Debug mode: keep all temporary files (default OFF)"
    db_dir: "[X]        Prokka database root folders (default '/usr/local/db')"
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
    no_an_no: "For CDS just set /product=\\\"unannotated protein\\\" (default OFF)"
    min_conti_glen: "[N] Minimum contig size [NCBI needs 200] (default '1')"
    rf_am: "Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')"
    no_rrna: "Don't run rRNA search (default OFF)"
    do_trna: "Run tRNA search (default OFF)"
    rn_ammer: "Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)"
    do_tbl_two_asn: "Run tbl2asn (default OFF)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_force = "${in_force}"
    File out_prefix = "${in_prefix}"
  }
}