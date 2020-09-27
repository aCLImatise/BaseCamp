version 1.0

task PhyloFlashMakedbpl {
  input {
    Boolean? remote
    File? silva_file
    File? univ_ec_file
    Boolean? emir_ge
    Boolean? sort_merna
    Boolean? keep
    Boolean? overwrite
    Int? cpus
    Int? mem
    File? log
    Boolean? check_env
    Boolean? man
    File path_slash_to_slash_univ_ec_db
    String recommended_dot
  }
  command <<<
    phyloFlash_makedb_pl \
      ~{path_slash_to_slash_univ_ec_db} \
      ~{recommended_dot} \
      ~{if (remote) then "--remote" else ""} \
      ~{if defined(silva_file) then ("--silva_file " +  '"' + silva_file + '"') else ""} \
      ~{if defined(univ_ec_file) then ("--univec_file " +  '"' + univ_ec_file + '"') else ""} \
      ~{if (emir_ge) then "--emirge" else ""} \
      ~{if (sort_merna) then "--sortmerna" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(cpus) then ("--CPUs " +  '"' + cpus + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (check_env) then "--check_env" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    remote: "Download databases via FTP"
    silva_file: "Path to local copy of SILVA database file. Ignored if --remote\\nflag is used.\\nThis should be the Fasta-formatted SILVA SSURef file, clustered\\nat 99% identity, with SILVA taxonomy strings in file header, and\\nsequences truncated to SSU gene boundaries. The file name should\\nbe in the form\\nSILVA_[Release]_SSURef_Nr99_tax_silva_trunc.fasta.gz (release\\n132 and before) or\\nSILVA_[Release]_SSURef_NR99_tax_silva_trunc.fasta.gz (from\\nrelease 138 onwards)"
    univ_ec_file: "Path to local copy of Univec database file. Ignored if --remote\\nflag is used."
    emir_ge: "Index database with Bowtie v1 for Emirge. Requires bowtie-build\\nto be in path.\\nDefault: Yes (turn off with --noemirge)"
    sort_merna: "Index database for Sortmerna, if you wish to use it as an\\nalternative to BBmap for extracting rRNA reads from the read\\nfile. Requires indexdb_rna to be in path.\\nDefault: No (--nosortmerna)."
    keep: "Do not delete intermediary files"
    overwrite: "Overwrite files if already present. Files are not overwritten by\\ndefault, allowing you to restart the DB build process if it was\\ninterrupted (but you will have to do find and delete corrupted\\nfiles manually).\\nDefault: No (\\\"--nooverwrite\\\")"
    cpus: "Number of processors to use\\nDefault: All available"
    mem: "Memory limit (in Gb) for indexing tools. At least 10 is"
    log: "Write phyloFlash_makedb.pl log to a file.\\nDefault: None"
    check_env: "Check that required dependencies are available in your path. If\\nspecifying optional tools --sortmerna and --emirge, put the\\n--check_env argument at the end of the command."
    man: "Full manual page"
    path_slash_to_slash_univ_ec_db: "## Get help"
    recommended_dot: "Default: 10"
  }
  output {
    File out_stdout = stdout()
  }
}