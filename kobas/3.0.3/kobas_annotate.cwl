class: CommandLineTool
id: kobas_annotate.cwl
inputs:
- id: list
  doc: list available species, or list available databases for a specific species
  type: boolean
  inputBinding:
    prefix: --list
- id: in_file
  doc: input data file
  type: string
  inputBinding:
    prefix: --infile
- id: in_type
  doc: input type (fasta:pro, fasta:nuc, blastout:xml, blastout:tab, id:refseqpro,
    id:uniprot, id:ensembl, id:ncbigene), default fasta:pro
  type: long
  inputBinding:
    prefix: --intype
- id: species
  doc: 'species abbreviation (for example: ko for KEGG Orthology, hsa for Homo sapiens,
    mmu for Mus musculus, dme for Drosophila melanogaster, ath for Arabidopsis thaliana,
    sce for Saccharomyces cerevisiae and eco for Escherichia coli K-12 MG1655)'
  type: string
  inputBinding:
    prefix: --species
- id: outfile
  doc: output file for annotation result, default stdout
  type: string
  inputBinding:
    prefix: --outfile
- id: evalue
  doc: expect threshold for BLAST, default 1e-5
  type: string
  inputBinding:
    prefix: --evalue
- id: rank
  doc: rank cutoff for valid hits from BLAST result, default 5
  type: string
  inputBinding:
    prefix: --rank
- id: n_cpus
  doc: number of CPUs to be used by BLAST, default 1
  type: string
  inputBinding:
    prefix: --nCPUs
- id: coverage
  doc: subject coverage cutoff for BLAST, default 0
  type: string
  inputBinding:
    prefix: --coverage
- id: ortholog
  doc: whether only use orthologs for cross-species annotation or not, default NO
    (if only use orthologs, please provide the species abbreviation of your input)
  type: string
  inputBinding:
    prefix: --ortholog
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
- kobas-annotate
