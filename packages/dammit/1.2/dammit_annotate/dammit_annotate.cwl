class: CommandLineTool
id: dammit_annotate.cwl
inputs:
- id: in_name
  doc: "Base name to use for renaming the input transcripts.\nThe new names will be\
    \ of the form <name>_<X>. It\nshould not have spaces, pipes, ampersands, or other\n\
    characters with special meaning to BASH. (default:\nTranscript)"
  type: string
  inputBinding:
    prefix: --name
- id: in_evalue
  doc: "e-value cutoff for similarity searches. (default:\n1e-05)"
  type: double
  inputBinding:
    prefix: --evalue
- id: in_output_dir
  doc: "Output directory. By default this will be the name of\nthe transcriptome file\
    \ with `.dammit` appended\n(default: None)"
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_user_databases
  doc: "Optional additional protein databases. These will be\nsearched with CRB-blast.\
    \ (default: [])"
  type: string[]
  inputBinding:
    prefix: --user-databases
- id: in_ssh_login_file
  doc: "Distribute execution across the specified nodes.\n(default: None)"
  type: File
  inputBinding:
    prefix: --sshloginfile
- id: in_database_dir
  doc: "Directory to store databases. Existing databases will\nnot be overwritten.\
    \ By default, the database directory\nis $HOME/.dammit/databases. (default:\n\
    /root/.dammit/databases)"
  type: Directory
  inputBinding:
    prefix: --database-dir
- id: in_busco_group
  doc: "[metazoa, eukaryota, vertebrata, ...]\nWhich BUSCO group to use. Should be\
    \ chosen based on\nthe organism being annotated. Full list of options is\nbelow.\
    \ (default: metazoa)"
  type: boolean
  inputBinding:
    prefix: --busco-group
- id: in_n_threads
  doc: "For annotate, number of threads to pass to programs\nsupporting multithreading.\
    \ For databases, number of\nsimultaneous tasks to execute. (default: 1)"
  type: long
  inputBinding:
    prefix: --n_threads
- id: in_config_file
  doc: "A JSON file providing values to override built-in\nconfig. Advanced use only!\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --config-file
- id: in_busco_config_file
  doc: "Path to an alternative BUSCO config file; otherwise,\nBUSCO will attempt to\
    \ use its default installation\nwhich will likely only work on bioconda. Advanced\
    \ use\nonly! (default: None)"
  type: File
  inputBinding:
    prefix: --busco-config-file
- id: in_verbosity
  doc: 'Verbosity level for doit tasks. (default: 0)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_profile
  doc: 'Profile task execution. (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_force
  doc: 'Ignore missing database tasks. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: in_no_rename
  doc: "Keep original transcript names. Note: make sure your\ntranscript names do\
    \ not contain unusual characters.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no-rename
- id: in_full
  doc: "Run a \"complete\" annotation; includes uniref90, which\nis left out of the\
    \ default pipeline because it is huge\nand homology searches take a long time.\
    \ (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --full
- id: in_nr
  doc: "Also include annotation to NR database, which is left\nout of the default\
    \ and \"full\" pipelines because it is\nhuge and homology searches take a long\
    \ time. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --nr
- id: in_quick
  doc: "Run a \"quick\" annotation; excludes the Infernal Rfam\ntasks, the HMMER Pfam\
    \ tasks, and the LAST OrthoDB and\nuniref90 tasks. Best for users just looking\
    \ to get\nbasic stats and conditional reciprocal best LAST from\na protein database.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_transcriptome
  doc: FASTA file with the transcripts to be annotated.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory. By default this will be the name of\nthe transcriptome file\
    \ with `.dammit` appended\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- dammit
- annotate
