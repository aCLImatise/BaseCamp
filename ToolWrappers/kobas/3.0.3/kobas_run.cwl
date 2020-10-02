class: CommandLineTool
id: kobas_run.cwl
inputs:
- id: in_list
  doc: "list available species, or list available databases\nfor specific species"
  type: boolean
  inputBinding:
    prefix: --list
- id: in_in_file
  doc: input data file
  type: File
  inputBinding:
    prefix: --infile
- id: in_in_type
  doc: "input type (fasta:pro, fasta:nuc, blastout:xml,\nblastout:tab, id:refseqpro,\
    \ id:uniprot, id:ensembl,\nid:ncbigene), default fasta:pro"
  type: string
  inputBinding:
    prefix: --intype
- id: in_species
  doc: "species abbreviation (for example: ko for KEGG\nOrthology, hsa for Homo sapiens,\
    \ mmu for Mus musculus,\ndme for Drosophila melanogaster, ath for Arabidopsis\n\
    thaliana, sce for Saccharomyces cerevisiae and eco for\nEscherichia coli K-12\
    \ MG1655)"
  type: long
  inputBinding:
    prefix: --species
- id: in_evalue
  doc: expect threshold for BLAST, default 1e-5
  type: double
  inputBinding:
    prefix: --evalue
- id: in_rank
  doc: "rank cutoff for valid hits from BLAST result, default\n5"
  type: long
  inputBinding:
    prefix: --rank
- id: in_n_cpus
  doc: number of CPUs to be used by BLAST, default 1
  type: long
  inputBinding:
    prefix: --nCPUs
- id: in_coverage
  doc: subject coverage cutoff for BLAST, default 0
  type: long
  inputBinding:
    prefix: --coverage
- id: in_ortholog
  doc: "whether only use ortholog for cross-species annotation\nor not, default NO\
    \ (If only use ortholog, give species\nabbr)"
  type: string
  inputBinding:
    prefix: --ortholog
- id: in_bg_file
  doc: "background file, the output of annotate (3 or 4-letter\nfile name is not allowed),\
    \ or species abbreviation\n(for example: hsa for Homo sapiens, mmu for Mus\nmusculus,\
    \ dme for Drosophila melanogaster, ath for\nArabidopsis thaliana, sce for Saccharomyces\
    \ cerevisiae\nand eco for Escherichia coli K-12 MG1655), default\nsame species\
    \ as annotate"
  type: File
  inputBinding:
    prefix: --bgfile
- id: in_db
  doc: "databases for selection, 1-letter abbreviation\nseparated by \"/\": K for\
    \ KEGG PATHWAY, R for Reactome,\nB for BioCyc, p for PANTHER, o for OMIM, k for\
    \ KEGG\nDISEASE, N for NHGRI GWAS Catalog and G for Gene\nOntology, S for Gene\
    \ Ontology Slim, default\nK/R/B/p/o/k/N/G/S"
  type: long
  inputBinding:
    prefix: --db
- id: in_method
  doc: "choose statistical test method: b for binomial test, c\nfor chi-square test,\
    \ h for hypergeometric test /\nFisher's exact test, and x for frequency list,\
    \ default\nhypergeometric test / Fisher's exact test"
  type: string
  inputBinding:
    prefix: --method
- id: in_fdr
  doc: "choose false discovery rate (FDR) correction method:\nBH for Benjamini and\
    \ Hochberg, BY for Benjamini and\nYekutieli, QVALUE, and None, default BH"
  type: string
  inputBinding:
    prefix: --fdr
- id: in_outfile
  doc: output file for identification result, default stdout
  type: File
  inputBinding:
    prefix: --outfile
- id: in_cut_off
  doc: "the gene number in a term is not less than the cutoff,\ndefault 5"
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_kob_as_home
  doc: "Optional parameter. To set path to kobas_home, which\nis parent directory\
    \ of sqlite3/ and seq_pep/ , default\nvalue is read from ~/.kobasrcwhere you set\
    \ before\nrunning kobas. If you set this parameter, it means you\nset \"kobasdb\"\
    \ and \"blastdb\" in this following\ndirectory. e.g. \"-k /home/user/kobas/\"\
    , means that you\nset kobasdb = /home/user/kobas/sqlite3/ and blastdb =\n/home/user/kobas/seq_pep/"
  type: File
  inputBinding:
    prefix: --kobashome
- id: in_blast_home
  doc: "Optional parameter. To set parent directory of blastx\nand blastp. If you\
    \ set this parameter, it means you\nset \"blastx\" and \"blastp\" in this following\
    \ directory.\nDefault value is read from ~/.kobasrc where you set\nbefore running\
    \ kobas"
  type: Directory
  inputBinding:
    prefix: --blasthome
- id: in_blast_db
  doc: "Optional parameter. To set path to sep_pep/, default\nvalue is read from ~/.kobasrc\
    \ where you set before\nrunning kobas"
  type: File
  inputBinding:
    prefix: --blastdb
- id: in_koba_sdb
  doc: "Optional parameter. To set path to sqlite3/, default\nvalue is read from ~/.kobasrc\
    \ where you set before\nrunning kobas, e.g. \"-q /kobas_home/sqlite3/\""
  type: File
  inputBinding:
    prefix: --kobasdb
- id: in_blastp
  doc: "Optional parameter. To set path to blastp program,\ndefault value is read\
    \ from ~/.kobasrc where you set\nbefore running kobas"
  type: File
  inputBinding:
    prefix: --blastp
- id: in_blastx
  doc: "Optional parameter. To set path to  blasx program,\ndefault value is read\
    \ from ~/.kobasrc where you set\nbefore running kobas\n"
  type: File
  inputBinding:
    prefix: --blastx
- id: in_run_kob_as_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bg_file
  doc: "background file, the output of annotate (3 or 4-letter\nfile name is not allowed),\
    \ or species abbreviation\n(for example: hsa for Homo sapiens, mmu for Mus\nmusculus,\
    \ dme for Drosophila melanogaster, ath for\nArabidopsis thaliana, sce for Saccharomyces\
    \ cerevisiae\nand eco for Escherichia coli K-12 MG1655), default\nsame species\
    \ as annotate"
  type: File
  outputBinding:
    glob: $(inputs.in_bg_file)
- id: out_outfile
  doc: output file for identification result, default stdout
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- kobas-run
