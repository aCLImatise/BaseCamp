class: CommandLineTool
id: kobas_annotate.cwl
inputs:
- id: in_list
  doc: "list available species, or list available databases\nfor a specific species"
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_in_file
  doc: input data file
  type: File?
  inputBinding:
    prefix: --infile
- id: in_in_type
  doc: "input type (fasta:pro, fasta:nuc, blastout:xml,\nblastout:tab, id:refseqpro,\
    \ id:uniprot, id:ensembl,\nid:ncbigene), default fasta:pro"
  type: string?
  inputBinding:
    prefix: --intype
- id: in_species
  doc: "species abbreviation (for example: ko for KEGG\nOrthology, hsa for Homo sapiens,\
    \ mmu for Mus musculus,\ndme for Drosophila melanogaster, ath for Arabidopsis\n\
    thaliana, sce for Saccharomyces cerevisiae and eco for\nEscherichia coli K-12\
    \ MG1655)"
  type: long?
  inputBinding:
    prefix: --species
- id: in_outfile
  doc: output file for annotation result, default stdout
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_evalue
  doc: expect threshold for BLAST, default 1e-5
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_rank
  doc: "rank cutoff for valid hits from BLAST result, default\n5"
  type: long?
  inputBinding:
    prefix: --rank
- id: in_n_cpus
  doc: number of CPUs to be used by BLAST, default 1
  type: long?
  inputBinding:
    prefix: --nCPUs
- id: in_coverage
  doc: subject coverage cutoff for BLAST, default 0
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_ortholog
  doc: "whether only use orthologs for cross-species\nannotation or not, default NO\
    \ (if only use orthologs,\nplease provide the species abbreviation of your input)"
  type: string?
  inputBinding:
    prefix: --ortholog
- id: in_kob_as_home
  doc: "Optional parameter. To set path to kobas_home, which\nis parent directory\
    \ of sqlite3/ and seq_pep/ , default\nvalue is read from ~/.kobasrcwhere you set\
    \ before\nrunning kobas. If you set this parameter, it means you\nset \"kobasdb\"\
    \ and \"blastdb\" in this following\ndirectory. e.g. \"-k /home/user/kobas/\"\
    , means that you\nset kobasdb = /home/user/kobas/sqlite3/ and blastdb =\n/home/user/kobas/seq_pep/"
  type: File?
  inputBinding:
    prefix: --kobashome
- id: in_blast_home
  doc: "Optional parameter. To set parent directory of blastx\nand blastp. If you\
    \ set this parameter, it means you\nset \"blastx\" and \"blastp\" in this following\
    \ directory.\nDefault value is read from ~/.kobasrc where you set\nbefore running\
    \ kobas"
  type: Directory?
  inputBinding:
    prefix: --blasthome
- id: in_blast_db
  doc: "Optional parameter. To set path to sep_pep/, default\nvalue is read from ~/.kobasrc\
    \ where you set before\nrunning kobas"
  type: File?
  inputBinding:
    prefix: --blastdb
- id: in_koba_sdb
  doc: "Optional parameter. To set path to sqlite3/, default\nvalue is read from ~/.kobasrc\
    \ where you set before\nrunning kobas, e.g. \"-q /kobas_home/sqlite3/\""
  type: File?
  inputBinding:
    prefix: --kobasdb
- id: in_blastp
  doc: "Optional parameter. To set path to blastp program,\ndefault value is read\
    \ from ~/.kobasrc where you set\nbefore running kobas"
  type: File?
  inputBinding:
    prefix: --blastp
- id: in_blastx
  doc: "Optional parameter. To set path to  blasx program,\ndefault value is read\
    \ from ~/.kobasrc where you set\nbefore running kobas\n"
  type: File?
  inputBinding:
    prefix: --blastx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output file for annotation result, default stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- kobas-annotate
