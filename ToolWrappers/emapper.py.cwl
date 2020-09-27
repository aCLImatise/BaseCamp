class: CommandLineTool
id: emapper.py.cwl
inputs:
- id: in_guess_db
  doc: "guess eggnog db based on the provided taxid\n--database , -d       specify\
    \ the target database for sequence searches.\nChoose among: euk,bact,arch, host:port,\
    \ or a local\nhmmpressed database\n--dbtype {hmmdb,seqdb}\n--data_dir        \
    \    Directory to use for DATA_PATH.\n--qtype {hmm,seq}"
  type: boolean
  inputBinding:
    prefix: --guessdb
- id: in_tax_scope
  doc: "Fix the taxonomic scope used for annotation, so only\northologs from a particular\
    \ clade are used for\nfunctional transfer. By default, this is automatically\n\
    adjusted for every query sequence."
  type: boolean
  inputBinding:
    prefix: --tax_scope
- id: in_target_orthologs
  doc: "defines what type of orthologs should be used for\nfunctional transfer"
  type: string
  inputBinding:
    prefix: --target_orthologs
- id: in_excluded_tax_a
  doc: (for debugging and benchmark purposes)
  type: boolean
  inputBinding:
    prefix: --excluded_taxa
- id: in_go_evidence
  doc: "Defines what type of GO terms should be used for\nannotation:experimental\
    \ = Use only terms inferred from\nexperimental evidencenon-electronic = Use only\
    \ non-\nelectronically curated terms"
  type: string
  inputBinding:
    prefix: --go_evidence
- id: in_hmm_max_hits
  doc: Max number of hits to report. Default=1
  type: boolean
  inputBinding:
    prefix: --hmm_maxhits
- id: in_hmm_evalue
  doc: E-value threshold. Default=0.001
  type: boolean
  inputBinding:
    prefix: --hmm_evalue
- id: in_hmm_score
  doc: Bit score threshold. Default=20
  type: boolean
  inputBinding:
    prefix: --hmm_score
- id: in_hmm_max_seq_len
  doc: "Ignore query sequences larger than `maxseqlen`.\nDefault=5000"
  type: boolean
  inputBinding:
    prefix: --hmm_maxseqlen
- id: in_hmm_q_cov
  doc: min query coverage (from 0 to 1). Default=(disabled)
  type: boolean
  inputBinding:
    prefix: --hmm_qcov
- id: in_fixed_database_size
  doc: "Fixed database size used in phmmer/hmmscan (allows\ncomparing e-values among\
    \ databases).\nDefault=40,000,000"
  type: boolean
  inputBinding:
    prefix: --Z
- id: in_dm_nd_db
  doc: Path to DIAMOND-compatible database
  type: File
  inputBinding:
    prefix: --dmnd_db
- id: in_matrix
  doc: Scoring matrix
  type: string
  inputBinding:
    prefix: --matrix
- id: in_gap_open
  doc: Gap open penalty
  type: string
  inputBinding:
    prefix: --gapopen
- id: in_gap_extend
  doc: Gap extend penalty
  type: string
  inputBinding:
    prefix: --gapextend
- id: in_query_cover
  doc: "Report only alignments above the given percentage of\nquery cover. Default=0"
  type: long
  inputBinding:
    prefix: --query-cover
- id: in_subject_cover
  doc: "Report only alignments above the given percentage of\nsubject cover. Default=0"
  type: long
  inputBinding:
    prefix: --subject-cover
- id: in_seed_ortholog_evalue
  doc: "Min E-value expected when searching for seed eggNOG\northolog. Applies to\
    \ phmmer/diamond searches. Queries\nnot having a significant seed orthologs will\
    \ not be\nannotated. Default=0.001"
  type: boolean
  inputBinding:
    prefix: --seed_ortholog_evalue
- id: in_seed_ortholog_score
  doc: "Min bit score expected when searching for seed eggNOG\northolog. Applies to\
    \ phmmer/diamond searches. Queries\nnot having a significant seed orthologs will\
    \ not be\nannotated. Default=60"
  type: boolean
  inputBinding:
    prefix: --seed_ortholog_score
- id: in_output
  doc: ', -o         base name for output files'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_resume
  doc: "Resumes a previous execution skipping reported hits in\nthe output file."
  type: File
  inputBinding:
    prefix: --resume
- id: in_override
  doc: Overwrites output files if they exist.
  type: boolean
  inputBinding:
    prefix: --override
- id: in_no_refine
  doc: Skip hit refinement, reporting only HMM hits.
  type: boolean
  inputBinding:
    prefix: --no_refine
- id: in_no_an_not
  doc: Skip functional annotation, reporting only hits
  type: boolean
  inputBinding:
    prefix: --no_annot
- id: in_no_search
  doc: Skip HMM search mapping. Use existing hits file
  type: boolean
  inputBinding:
    prefix: --no_search
- id: in_predict_ortho
  doc: The list of predicted orthologs
  type: boolean
  inputBinding:
    prefix: --predict_ortho
- id: in_report_orthologs
  doc: "The list of orthologs used for functional transferred\nare dumped into a separate\
    \ file"
  type: boolean
  inputBinding:
    prefix: --report_orthologs
- id: in_scratch_dir
  doc: "Write output files in a temporary scratch dir, move\nthem to final the final\
    \ output dir when finished.\nSpeed up large computations using network file\n\
    systems."
  type: File
  inputBinding:
    prefix: --scratch_dir
- id: in_output_dir
  doc: Where output files should be written
  type: boolean
  inputBinding:
    prefix: --output_dir
- id: in_temp_dir
  doc: "Where temporary files are created. Better if this is a\nlocal disk."
  type: boolean
  inputBinding:
    prefix: --temp_dir
- id: in_no_file_comments
  doc: No header lines nor stats are included in the output
  type: boolean
  inputBinding:
    prefix: --no_file_comments
- id: in_target_tax_a
  doc: taxa that will be searched for orthologs
  type: string[]
  inputBinding:
    prefix: --target_taxa
- id: in_predict_output_format
  doc: "Choose the output format among: per_query, per_species\n.Default = per_species"
  type: string
  inputBinding:
    prefix: --predict_output_format
- id: in_defaulthmmer
  doc: Default:hmmer
  type: string
  inputBinding:
    prefix: -m
- id: in_input_fasta_file
  doc: Input FASTA file containing query sequences
  type: boolean
  inputBinding:
    prefix: -i
- id: in_translate
  doc: Assume sequences are genes instead of proteins
  type: boolean
  inputBinding:
    prefix: --translate
- id: in_server_mode
  doc: "Loads target database in memory and keeps running in\nserver mode, so another\
    \ instance of eggnog-mapper can\nconnect to this sever. Auto turns on the --usemem\
    \ flag"
  type: boolean
  inputBinding:
    prefix: --servermode
- id: in_use_mem
  doc: "If a local hmmpressed database is provided as target\nusing --db, this flag\
    \ will allocate the whole database\nin memory using hmmpgmd. Database will be\
    \ unloaded\nafter execution."
  type: boolean
  inputBinding:
    prefix: --usemem
- id: in_annotate_hits_table
  doc: "Annotatate TSV formatted table of query->hits. 4\nfields required: query,\
    \ hit, evalue, score. Implies\n--no_search and --no_refine.\n"
  type: boolean
  inputBinding:
    prefix: --annotate_hits_table
- id: in_dbtype
  doc: ''
  type: string
  inputBinding:
    prefix: --dbtype
- id: in_database
  doc: ''
  type: boolean
  inputBinding:
    prefix: --database
- id: in_files
  doc: --keep_mapping_files  Do not delete temporary mapping files used for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_resume
  doc: "Resumes a previous execution skipping reported hits in\nthe output file."
  type: File
  outputBinding:
    glob: $(inputs.in_resume)
- id: out_scratch_dir
  doc: "Write output files in a temporary scratch dir, move\nthem to final the final\
    \ output dir when finished.\nSpeed up large computations using network file\n\
    systems."
  type: File
  outputBinding:
    glob: $(inputs.in_scratch_dir)
cwlVersion: v1.1
baseCommand:
- emapper.py
