class: CommandLineTool
id: phyloFlash_makedb.pl.cwl
inputs:
- id: in_remote
  doc: Download databases via FTP
  type: boolean
  inputBinding:
    prefix: --remote
- id: in_silva_file
  doc: "Path to local copy of SILVA database file. Ignored if --remote\nflag is used.\n\
    This should be the Fasta-formatted SILVA SSURef file, clustered\nat 99% identity,\
    \ with SILVA taxonomy strings in file header, and\nsequences truncated to SSU\
    \ gene boundaries. The file name should\nbe in the form\nSILVA_[Release]_SSURef_Nr99_tax_silva_trunc.fasta.gz\
    \ (release\n132 and before) or\nSILVA_[Release]_SSURef_NR99_tax_silva_trunc.fasta.gz\
    \ (from\nrelease 138 onwards)"
  type: File
  inputBinding:
    prefix: --silva_file
- id: in_univ_ec_file
  doc: "Path to local copy of Univec database file. Ignored if --remote\nflag is used."
  type: File
  inputBinding:
    prefix: --univec_file
- id: in_emir_ge
  doc: "Index database with Bowtie v1 for Emirge. Requires bowtie-build\nto be in\
    \ path.\nDefault: Yes (turn off with --noemirge)"
  type: boolean
  inputBinding:
    prefix: --emirge
- id: in_sort_merna
  doc: "Index database for Sortmerna, if you wish to use it as an\nalternative to\
    \ BBmap for extracting rRNA reads from the read\nfile. Requires indexdb_rna to\
    \ be in path.\nDefault: No (--nosortmerna)."
  type: boolean
  inputBinding:
    prefix: --sortmerna
- id: in_keep
  doc: Do not delete intermediary files
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_overwrite
  doc: "Overwrite files if already present. Files are not overwritten by\ndefault,\
    \ allowing you to restart the DB build process if it was\ninterrupted (but you\
    \ will have to do find and delete corrupted\nfiles manually).\nDefault: No (\"\
    --nooverwrite\")"
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_cpus
  doc: "Number of processors to use\nDefault: All available"
  type: long
  inputBinding:
    prefix: --CPUs
- id: in_mem
  doc: Memory limit (in Gb) for indexing tools. At least 10 is
  type: long
  inputBinding:
    prefix: --mem
- id: in_log
  doc: "Write phyloFlash_makedb.pl log to a file.\nDefault: None"
  type: File
  inputBinding:
    prefix: --log
- id: in_check_env
  doc: "Check that required dependencies are available in your path. If\nspecifying\
    \ optional tools --sortmerna and --emirge, put the\n--check_env argument at the\
    \ end of the command."
  type: boolean
  inputBinding:
    prefix: --check_env
- id: in_man
  doc: Full manual page
  type: boolean
  inputBinding:
    prefix: --man
- id: in_path_slash_to_slash_univ_ec_db
  doc: '## Get help'
  type: File
  inputBinding:
    position: 0
- id: in_recommended_dot
  doc: 'Default: 10'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyloFlash_makedb.pl
