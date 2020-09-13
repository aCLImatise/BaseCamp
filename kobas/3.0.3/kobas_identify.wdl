version 1.0

task Kobasidentify {
  input {
    File? fg_file
    File? bg_file
    Int? db
    String? method
    String? fdr
    File? outfile
    Int? cut_off
    File? kob_as_home
    Directory? blast_home
    File? blast_db
    File? koba_sdb
    File? blastp
    File? blastx
  }
  command <<<
    kobas_identify \
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
    bg_file: "background file, the output of annotate (3 or 4-letter\\nfile name is not allowed), or species abbreviation\\n(for example: hsa for Homo sapiens, mmu for Mus\\nmusculus, dme for Drosophila melanogaster, ath for\\nArabidopsis thaliana, sce for Saccharomyces cerevisiae\\nand eco for Escherichia coli K-12 MG1655), default\\nsame species as annotate"
    db: "databases for selection, 1-letter abbreviation\\nseparated by \\\"/\\\": K for KEGG PATHWAY, R for Reactome,\\nB for BioCyc, p for PANTHER, o for OMIM, k for KEGG\\nDISEASE, N for NHGRI GWAS Catalog, G for Gene\\nOntology,  S for Gene Ontology Slim(GOslim), default\\nK/R/B/p/o/k/N/G/S"
    method: "choose statistical test method: b for binomial test, c\\nfor chi-square test, h for hypergeometric test /\\nFisher's exact test, and x for frequency list, default\\nhypergeometric test / Fisher's exact test"
    fdr: "choose false discovery rate (FDR) correction method:\\nBH for Benjamini and Hochberg, BY for Benjamini and\\nYekutieli, QVALUE, and None, default BH"
    outfile: "output file for identification result, default stdout"
    cut_off: "terms with less than cutoff number of genes are not\\nused for statistical tests, default 5"
    kob_as_home: "Optional parameter. To set path to kobas_home, which\\nis parent directory of sqlite3/ and seq_pep/ , default\\nvalue is read from ~/.kobasrcwhere you set before\\nrunning kobas. If you set this parameter, it means you\\nset \\\"kobasdb\\\" and \\\"blastdb\\\" in this following\\ndirectory. e.g. \\\"-k /home/user/kobas/\\\", means that you\\nset kobasdb = /home/user/kobas/sqlite3/ and blastdb =\\n/home/user/kobas/seq_pep/"
    blast_home: "Optional parameter. To set parent directory of blastx\\nand blastp. If you set this parameter, it means you\\nset \\\"blastx\\\" and \\\"blastp\\\" in this following directory.\\nDefault value is read from ~/.kobasrc where you set\\nbefore running kobas"
    blast_db: "Optional parameter. To set path to sep_pep/, default\\nvalue is read from ~/.kobasrc where you set before\\nrunning kobas"
    koba_sdb: "Optional parameter. To set path to sqlite3/, default\\nvalue is read from ~/.kobasrc where you set before\\nrunning kobas, e.g. \\\"-q /kobas_home/sqlite3/\\\""
    blastp: "Optional parameter. To set path to blastp program,\\ndefault value is read from ~/.kobasrc where you set\\nbefore running kobas"
    blastx: "Optional parameter. To set path to  blasx program,\\ndefault value is read from ~/.kobasrc where you set\\nbefore running kobas\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fg_file = "${in_fg_file}"
    File out_bg_file = "${in_bg_file}"
    File out_outfile = "${in_outfile}"
  }
}