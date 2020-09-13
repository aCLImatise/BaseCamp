version 1.0

task Kobasannotate {
  input {
    Boolean? list
    File? in_file
    String? in_type
    Int? species
    File? outfile
    Float? evalue
    Int? rank
    Int? n_cpus
    Int? coverage
    String? ortholog
    File? kob_as_home
    Directory? blast_home
    File? blast_db
    File? koba_sdb
    File? blastp
    File? blastx
  }
  command <<<
    kobas_annotate \
      ~{if (list) then "--list" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(in_type) then ("--intype " +  '"' + in_type + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(n_cpus) then ("--nCPUs " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(ortholog) then ("--ortholog " +  '"' + ortholog + '"') else ""} \
      ~{if defined(kob_as_home) then ("--kobashome " +  '"' + kob_as_home + '"') else ""} \
      ~{if defined(blast_home) then ("--blasthome " +  '"' + blast_home + '"') else ""} \
      ~{if defined(blast_db) then ("--blastdb " +  '"' + blast_db + '"') else ""} \
      ~{if defined(koba_sdb) then ("--kobasdb " +  '"' + koba_sdb + '"') else ""} \
      ~{if defined(blastp) then ("--blastp " +  '"' + blastp + '"') else ""} \
      ~{if defined(blastx) then ("--blastx " +  '"' + blastx + '"') else ""}
  >>>
  parameter_meta {
    list: "list available species, or list available databases\\nfor a specific species"
    in_file: "input data file"
    in_type: "input type (fasta:pro, fasta:nuc, blastout:xml,\\nblastout:tab, id:refseqpro, id:uniprot, id:ensembl,\\nid:ncbigene), default fasta:pro"
    species: "species abbreviation (for example: ko for KEGG\\nOrthology, hsa for Homo sapiens, mmu for Mus musculus,\\ndme for Drosophila melanogaster, ath for Arabidopsis\\nthaliana, sce for Saccharomyces cerevisiae and eco for\\nEscherichia coli K-12 MG1655)"
    outfile: "output file for annotation result, default stdout"
    evalue: "expect threshold for BLAST, default 1e-5"
    rank: "rank cutoff for valid hits from BLAST result, default\\n5"
    n_cpus: "number of CPUs to be used by BLAST, default 1"
    coverage: "subject coverage cutoff for BLAST, default 0"
    ortholog: "whether only use orthologs for cross-species\\nannotation or not, default NO (if only use orthologs,\\nplease provide the species abbreviation of your input)"
    kob_as_home: "Optional parameter. To set path to kobas_home, which\\nis parent directory of sqlite3/ and seq_pep/ , default\\nvalue is read from ~/.kobasrcwhere you set before\\nrunning kobas. If you set this parameter, it means you\\nset \\\"kobasdb\\\" and \\\"blastdb\\\" in this following\\ndirectory. e.g. \\\"-k /home/user/kobas/\\\", means that you\\nset kobasdb = /home/user/kobas/sqlite3/ and blastdb =\\n/home/user/kobas/seq_pep/"
    blast_home: "Optional parameter. To set parent directory of blastx\\nand blastp. If you set this parameter, it means you\\nset \\\"blastx\\\" and \\\"blastp\\\" in this following directory.\\nDefault value is read from ~/.kobasrc where you set\\nbefore running kobas"
    blast_db: "Optional parameter. To set path to sep_pep/, default\\nvalue is read from ~/.kobasrc where you set before\\nrunning kobas"
    koba_sdb: "Optional parameter. To set path to sqlite3/, default\\nvalue is read from ~/.kobasrc where you set before\\nrunning kobas, e.g. \\\"-q /kobas_home/sqlite3/\\\""
    blastp: "Optional parameter. To set path to blastp program,\\ndefault value is read from ~/.kobasrc where you set\\nbefore running kobas"
    blastx: "Optional parameter. To set path to  blasx program,\\ndefault value is read from ~/.kobasrc where you set\\nbefore running kobas\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}