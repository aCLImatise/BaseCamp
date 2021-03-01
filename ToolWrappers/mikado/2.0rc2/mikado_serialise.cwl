class: CommandLineTool
id: mikado_serialise.cwl
inputs:
- id: in_start_method
  doc: Multiprocessing start method.
  type: string?
  inputBinding:
    prefix: --start-method
- id: in_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_orfs
  doc: ORF BED file(s), separated by commas
  type: File?
  inputBinding:
    prefix: --orfs
- id: in_transcripts
  doc: "Transcript FASTA file(s) used for ORF calling and\nBLAST queries, separated\
    \ by commas. If multiple files\nare given, they must be in the same order of the\
    \ ORF\nfiles. E.g. valid command lines are:\n--transcript_fasta all_seqs1.fasta\
    \ --orfs all_orfs.bed\n--transcript_fasta seq1.fasta,seq2.fasta --orfs\norfs1.bed,orf2.bed\
    \ --transcript_fasta all_seqs.fasta\n--orfs orfs1.bed,orf2.bed These are invalid\
    \ instead: #\nInverted order --transcript_fasta\nseq1.fasta,seq2.fasta --orfs\
    \ orfs2.bed,orf1.bed #Two\ntranscript files, one ORF file --transcript_fasta\n\
    seq1.fasta,seq2.fasta --orfs all_orfs.bed"
  type: File?
  inputBinding:
    prefix: --transcripts
- id: in_max_regression
  doc: "\"Amount of sequence in the ORF (in %) to backtrack in\norder to find a valid\
    \ START codon, if one is absent.\nDefault: None"
  type: long?
  inputBinding:
    prefix: --max-regression
- id: in_codon_table
  doc: "Codon table to use. Default: 0 (ie Standard, NCBI #1,\nbut only ATG is considered\
    \ a valid start codon."
  type: long?
  inputBinding:
    prefix: --codon-table
- id: in_no_start_adjustment
  doc: "Disable the start adjustment algorithm. Useful when\nusing e.g. TransDecoder\
    \ vs 5+."
  type: boolean?
  inputBinding:
    prefix: --no-start-adjustment
- id: in_max_target_seqs
  doc: Maximum number of target sequences.
  type: long?
  inputBinding:
    prefix: --max-target-seqs
- id: in_blast_targets
  doc: Target sequences
  type: string?
  inputBinding:
    prefix: --blast-targets
- id: in_xml
  doc: "BLAST file(s) to parse. They can be provided in three\nways: - a comma-separated\
    \ list - as a base folder -\nusing bash-like name expansion (*,?, etc.). In this\n\
    case, you have to enclose the filename pattern in\ndouble quotes. Multiple folders/file\
    \ patterns can be\ngiven, separated by a comma. BLAST files must be\neither of\
    \ two formats: - BLAST XML - BLAST tabular\nformat, with the following **custom**\
    \ fields: qseqid\nsseqid pident length mismatch gapopen qstart qend\nsstart send\
    \ evalue bitscore ppos btop"
  type: long?
  inputBinding:
    prefix: --xml
- id: in_procs
  doc: "Number of threads to use for analysing the BLAST\nfiles. This number should\
    \ not be higher than the total\nnumber of XML files."
  type: long?
  inputBinding:
    prefix: --procs
- id: in_single_thread
  doc: "Force serialise to run with a single thread,\nirrespective of other configuration\
    \ options."
  type: boolean?
  inputBinding:
    prefix: --single-thread
- id: in_external_scores
  doc: "Tabular file containing external scores for the\ntranscripts. Each column\
    \ should have a distinct name,\nand transcripts have to be listed on the first\
    \ column."
  type: File?
  inputBinding:
    prefix: --external-scores
- id: in_max_objects
  doc: "Maximum number of objects to cache in memory before\ncommitting to the database.\
    \ Default: 100,000 i.e.\napproximately 450MB RAM usage for Drosophila."
  type: long?
  inputBinding:
    prefix: --max-objects
- id: in_force
  doc: "Flag. If set, an existing databse will be deleted\n(sqlite) or dropped (MySQL/PostGreSQL)\
    \ before\nbeginning the serialisation."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_optional_log_file
  doc: "[LOG], --log [LOG]\nOptional log file. Default: stderr"
  type: File?
  inputBinding:
    prefix: --json-conf
- id: in_log_level
  doc: "Log level. Default: derived from the configuration; if\nabsent, INFO"
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_db
  doc: 'Optional output database. Default: derived from'
  type: string
  inputBinding:
    position: 0
- id: in__seed_seed
  doc: --seed SEED           Random seed number.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- mikado
- serialise
