version 1.0

task KobasRun {
  input {
    Boolean? list
    String? in_file
    Int? in_type
    String? species
    String? evalue
    String? rank
    String? n_cpus
    String? coverage
    String? ortholog
    String? bg_file
    String? db
    String? method
    String? fdr
    String? outfile
    String? cut_off
    String? kob_as_home
    String? blast_home
    String? blast_db
    String? koba_sdb
    String? blastp
    String? blastx
    String run_kob_as_do_tpy
  }
  command <<<
    kobas-run \
      ~{run_kob_as_do_tpy} \
      ~{true="--list" false="" list} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(in_type) then ("--intype " +  '"' + in_type + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(n_cpus) then ("--nCPUs " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(ortholog) then ("--ortholog " +  '"' + ortholog + '"') else ""} \
      ~{if defined(bg_file) then ("--bgfile " +  '"' + bg_file + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(kob_as_home) then ("--kobashome " +  '"' + kob_as_home + '"') else ""} \
      ~{if defined(blast_home) then ("--blasthome " +  '"' + blast_home + '"') else ""} \
      ~{if defined(blast_db) then ("--blastdb " +  '"' + blast_db + '"') else ""} \
      ~{if defined(koba_sdb) then ("--kobasdb " +  '"' + koba_sdb + '"') else ""} \
      ~{if defined(blastp) then ("--blastp " +  '"' + blastp + '"') else ""} \
      ~{if defined(blastx) then ("--blastx " +  '"' + blastx + '"') else ""}
  >>>
  parameter_meta {
    list: "list available species, or list available databases for specific species"
    in_file: "input data file"
    in_type: "input type (fasta:pro, fasta:nuc, blastout:xml, blastout:tab, id:refseqpro, id:uniprot, id:ensembl, id:ncbigene), default fasta:pro"
    species: "species abbreviation (for example: ko for KEGG Orthology, hsa for Homo sapiens, mmu for Mus musculus, dme for Drosophila melanogaster, ath for Arabidopsis thaliana, sce for Saccharomyces cerevisiae and eco for Escherichia coli K-12 MG1655)"
    evalue: "expect threshold for BLAST, default 1e-5"
    rank: "rank cutoff for valid hits from BLAST result, default 5"
    n_cpus: "number of CPUs to be used by BLAST, default 1"
    coverage: "subject coverage cutoff for BLAST, default 0"
    ortholog: "whether only use ortholog for cross-species annotation or not, default NO (If only use ortholog, give species abbr)"
    bg_file: "background file, the output of annotate (3 or 4-letter file name is not allowed), or species abbreviation (for example: hsa for Homo sapiens, mmu for Mus musculus, dme for Drosophila melanogaster, ath for Arabidopsis thaliana, sce for Saccharomyces cerevisiae and eco for Escherichia coli K-12 MG1655), default same species as annotate"
    db: "databases for selection, 1-letter abbreviation separated by \"/\": K for KEGG PATHWAY, R for Reactome, B for BioCyc, p for PANTHER, o for OMIM, k for KEGG DISEASE, N for NHGRI GWAS Catalog and G for Gene Ontology, S for Gene Ontology Slim, default K/R/B/p/o/k/N/G/S"
    method: "choose statistical test method: b for binomial test, c for chi-square test, h for hypergeometric test / Fisher's exact test, and x for frequency list, default hypergeometric test / Fisher's exact test"
    fdr: "choose false discovery rate (FDR) correction method: BH for Benjamini and Hochberg, BY for Benjamini and Yekutieli, QVALUE, and None, default BH"
    outfile: "output file for identification result, default stdout"
    cut_off: "the gene number in a term is not less than the cutoff, default 5"
    kob_as_home: "Optional parameter. To set path to kobas_home, which is parent directory of sqlite3/ and seq_pep/ , default value is read from ~/.kobasrcwhere you set before running kobas. If you set this parameter, it means you set \"kobasdb\" and \"blastdb\" in this following directory. e.g. \"-k /home/user/kobas/\", means that you set kobasdb = /home/user/kobas/sqlite3/ and blastdb = /home/user/kobas/seq_pep/"
    blast_home: "Optional parameter. To set parent directory of blastx and blastp. If you set this parameter, it means you set \"blastx\" and \"blastp\" in this following directory. Default value is read from ~/.kobasrc where you set before running kobas"
    blast_db: "Optional parameter. To set path to sep_pep/, default value is read from ~/.kobasrc where you set before running kobas"
    koba_sdb: "Optional parameter. To set path to sqlite3/, default value is read from ~/.kobasrc where you set before running kobas, e.g. \"-q /kobas_home/sqlite3/\""
    blastp: "Optional parameter. To set path to blastp program, default value is read from ~/.kobasrc where you set before running kobas"
    blastx: "Optional parameter. To set path to  blasx program, default value is read from ~/.kobasrc where you set before running kobas"
    run_kob_as_do_tpy: ""
  }
}