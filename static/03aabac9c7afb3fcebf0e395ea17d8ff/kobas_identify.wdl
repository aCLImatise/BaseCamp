version 1.0

task KobasIdentify {
  input {
    String? fg_file
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
  }
  command <<<
    kobas-identify \
      ~{if defined(fg_file) then ("--fgfile " +  '"' + fg_file + '"') else ""} \
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
    fg_file: "foreground file, the output of annotate"
    bg_file: "background file, the output of annotate (3 or 4-letter file name is not allowed), or species abbreviation (for example: hsa for Homo sapiens, mmu for Mus musculus, dme for Drosophila melanogaster, ath for Arabidopsis thaliana, sce for Saccharomyces cerevisiae and eco for Escherichia coli K-12 MG1655), default same species as annotate"
    db: "databases for selection, 1-letter abbreviation separated by \"/\": K for KEGG PATHWAY, R for Reactome, B for BioCyc, p for PANTHER, o for OMIM, k for KEGG DISEASE, N for NHGRI GWAS Catalog, G for Gene Ontology,  S for Gene Ontology Slim(GOslim), default K/R/B/p/o/k/N/G/S"
    method: "choose statistical test method: b for binomial test, c for chi-square test, h for hypergeometric test / Fisher's exact test, and x for frequency list, default hypergeometric test / Fisher's exact test"
    fdr: "choose false discovery rate (FDR) correction method: BH for Benjamini and Hochberg, BY for Benjamini and Yekutieli, QVALUE, and None, default BH"
    outfile: "output file for identification result, default stdout"
    cut_off: "terms with less than cutoff number of genes are not used for statistical tests, default 5"
    kob_as_home: "Optional parameter. To set path to kobas_home, which is parent directory of sqlite3/ and seq_pep/ , default value is read from ~/.kobasrcwhere you set before running kobas. If you set this parameter, it means you set \"kobasdb\" and \"blastdb\" in this following directory. e.g. \"-k /home/user/kobas/\", means that you set kobasdb = /home/user/kobas/sqlite3/ and blastdb = /home/user/kobas/seq_pep/"
    blast_home: "Optional parameter. To set parent directory of blastx and blastp. If you set this parameter, it means you set \"blastx\" and \"blastp\" in this following directory. Default value is read from ~/.kobasrc where you set before running kobas"
    blast_db: "Optional parameter. To set path to sep_pep/, default value is read from ~/.kobasrc where you set before running kobas"
    koba_sdb: "Optional parameter. To set path to sqlite3/, default value is read from ~/.kobasrc where you set before running kobas, e.g. \"-q /kobas_home/sqlite3/\""
    blastp: "Optional parameter. To set path to blastp program, default value is read from ~/.kobasrc where you set before running kobas"
    blastx: "Optional parameter. To set path to  blasx program, default value is read from ~/.kobasrc where you set before running kobas"
  }
}