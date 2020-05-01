#!/usr/bin/env cwl-runner

baseCommand:
- kobas-run
class: CommandLineTool
cwlVersion: v1.0
id: kobas-run
inputs:
- doc: ''
  id: run_koba_spy
  inputBinding:
    position: 0
  type: string
- doc: list available species, or list available databases for specific species
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: input data file
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: input type (fasta:pro, fasta:nuc, blastout:xml, blastout:tab, id:refseqpro,
    id:uniprot, id:ensembl, id:ncbigene), default fasta:pro
  id: in_type
  inputBinding:
    prefix: --intype
  type: long
- doc: 'species abbreviation (for example: ko for KEGG Orthology, hsa for Homo sapiens,
    mmu for Mus musculus, dme for Drosophila melanogaster, ath for Arabidopsis thaliana,
    sce for Saccharomyces cerevisiae and eco for Escherichia coli K-12 MG1655)'
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: expect threshold for BLAST, default 1e-5
  id: evalue
  inputBinding:
    prefix: --evalue
  type: string
- doc: rank cutoff for valid hits from BLAST result, default 5
  id: rank
  inputBinding:
    prefix: --rank
  type: string
- doc: number of CPUs to be used by BLAST, default 1
  id: n_cpus
  inputBinding:
    prefix: --nCPUs
  type: string
- doc: subject coverage cutoff for BLAST, default 0
  id: coverage
  inputBinding:
    prefix: --coverage
  type: string
- doc: whether only use ortholog for cross-species annotation or not, default NO (If
    only use ortholog, give species abbr)
  id: ortholog
  inputBinding:
    prefix: --ortholog
  type: string
- doc: 'background file, the output of annotate (3 or 4-letter file name is not allowed),
    or species abbreviation (for example: hsa for Homo sapiens, mmu for Mus musculus,
    dme for Drosophila melanogaster, ath for Arabidopsis thaliana, sce for Saccharomyces
    cerevisiae and eco for Escherichia coli K-12 MG1655), default same species as
    annotate'
  id: bg_file
  inputBinding:
    prefix: --bgfile
  type: string
- doc: 'databases for selection, 1-letter abbreviation separated by "/": K for KEGG
    PATHWAY, R for Reactome, B for BioCyc, p for PANTHER, o for OMIM, k for KEGG DISEASE,
    N for NHGRI GWAS Catalog and G for Gene Ontology, S for Gene Ontology Slim, default
    K/R/B/p/o/k/N/G/S'
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: "choose statistical test method: b for binomial test, c for chi-square test,\
    \ h for hypergeometric test / Fisher's exact test, and x for frequency list, default\
    \ hypergeometric test / Fisher's exact test"
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: 'choose false discovery rate (FDR) correction method: BH for Benjamini and
    Hochberg, BY for Benjamini and Yekutieli, QVALUE, and None, default BH'
  id: fdr
  inputBinding:
    prefix: --fdr
  type: string
- doc: output file for identification result, default stdout
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: the gene number in a term is not less than the cutoff, default 5
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: Optional parameter. To set path to kobas_home, which is parent directory of
    sqlite3/ and seq_pep/ , default value is read from ~/.kobasrcwhere you set before
    running kobas. If you set this parameter, it means you set "kobasdb" and "blastdb"
    in this following directory. e.g. "-k /home/user/kobas/", means that you set kobasdb
    = /home/user/kobas/sqlite3/ and blastdb = /home/user/kobas/seq_pep/
  id: kob_as_home
  inputBinding:
    prefix: --kobashome
  type: string
- doc: Optional parameter. To set parent directory of blastx and blastp. If you set
    this parameter, it means you set "blastx" and "blastp" in this following directory.
    Default value is read from ~/.kobasrc where you set before running kobas
  id: blast_home
  inputBinding:
    prefix: --blasthome
  type: string
- doc: Optional parameter. To set path to sep_pep/, default value is read from ~/.kobasrc
    where you set before running kobas
  id: blast_db
  inputBinding:
    prefix: --blastdb
  type: string
- doc: Optional parameter. To set path to sqlite3/, default value is read from ~/.kobasrc
    where you set before running kobas, e.g. "-q /kobas_home/sqlite3/"
  id: koba_sdb
  inputBinding:
    prefix: --kobasdb
  type: string
- doc: Optional parameter. To set path to blastp program, default value is read from
    ~/.kobasrc where you set before running kobas
  id: blastp
  inputBinding:
    prefix: --blastp
  type: string
- doc: Optional parameter. To set path to  blasx program, default value is read from
    ~/.kobasrc where you set before running kobas
  id: blastx
  inputBinding:
    prefix: --blastx
  type: string
