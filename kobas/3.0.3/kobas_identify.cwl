class: CommandLineTool
id: ../../../kobas_identify.cwl
inputs:
- id: fg_file
  doc: foreground file, the output of annotate
  type: string
  inputBinding:
    prefix: --fgfile
- id: bg_file
  doc: 'background file, the output of annotate (3 or 4-letter file name is not allowed),
    or species abbreviation (for example: hsa for Homo sapiens, mmu for Mus musculus,
    dme for Drosophila melanogaster, ath for Arabidopsis thaliana, sce for Saccharomyces
    cerevisiae and eco for Escherichia coli K-12 MG1655), default same species as
    annotate'
  type: string
  inputBinding:
    prefix: --bgfile
- id: db
  doc: 'databases for selection, 1-letter abbreviation separated by "/": K for KEGG
    PATHWAY, R for Reactome, B for BioCyc, p for PANTHER, o for OMIM, k for KEGG DISEASE,
    N for NHGRI GWAS Catalog, G for Gene Ontology,  S for Gene Ontology Slim(GOslim),
    default K/R/B/p/o/k/N/G/S'
  type: string
  inputBinding:
    prefix: --db
- id: method
  doc: "choose statistical test method: b for binomial test, c for chi-square test,\
    \ h for hypergeometric test / Fisher's exact test, and x for frequency list, default\
    \ hypergeometric test / Fisher's exact test"
  type: string
  inputBinding:
    prefix: --method
- id: fdr
  doc: 'choose false discovery rate (FDR) correction method: BH for Benjamini and
    Hochberg, BY for Benjamini and Yekutieli, QVALUE, and None, default BH'
  type: string
  inputBinding:
    prefix: --fdr
- id: outfile
  doc: output file for identification result, default stdout
  type: string
  inputBinding:
    prefix: --outfile
- id: cut_off
  doc: terms with less than cutoff number of genes are not used for statistical tests,
    default 5
  type: string
  inputBinding:
    prefix: --cutoff
- id: kob_as_home
  doc: Optional parameter. To set path to kobas_home, which is parent directory of
    sqlite3/ and seq_pep/ , default value is read from ~/.kobasrcwhere you set before
    running kobas. If you set this parameter, it means you set "kobasdb" and "blastdb"
    in this following directory. e.g. "-k /home/user/kobas/", means that you set kobasdb
    = /home/user/kobas/sqlite3/ and blastdb = /home/user/kobas/seq_pep/
  type: string
  inputBinding:
    prefix: --kobashome
- id: blast_home
  doc: Optional parameter. To set parent directory of blastx and blastp. If you set
    this parameter, it means you set "blastx" and "blastp" in this following directory.
    Default value is read from ~/.kobasrc where you set before running kobas
  type: string
  inputBinding:
    prefix: --blasthome
- id: blast_db
  doc: Optional parameter. To set path to sep_pep/, default value is read from ~/.kobasrc
    where you set before running kobas
  type: string
  inputBinding:
    prefix: --blastdb
- id: koba_sdb
  doc: Optional parameter. To set path to sqlite3/, default value is read from ~/.kobasrc
    where you set before running kobas, e.g. "-q /kobas_home/sqlite3/"
  type: string
  inputBinding:
    prefix: --kobasdb
- id: blastp
  doc: Optional parameter. To set path to blastp program, default value is read from
    ~/.kobasrc where you set before running kobas
  type: string
  inputBinding:
    prefix: --blastp
- id: blastx
  doc: Optional parameter. To set path to  blasx program, default value is read from
    ~/.kobasrc where you set before running kobas
  type: string
  inputBinding:
    prefix: --blastx
outputs: []
cwlVersion: v1.1
baseCommand:
- kobas-identify
