class: CommandLineTool
id: emapper.py.cwl
inputs:
- id: tax_scope
  doc: Fix the taxonomic scope used for annotation, so only orthologs from a particular
    clade are used for functional transfer. By default, this is automatically adjusted
    for every query sequence.
  type: boolean
  inputBinding:
    prefix: --tax_scope
- id: target_orthologs
  doc: defines what type of orthologs should be used for functional transfer
  type: string
  inputBinding:
    prefix: --target_orthologs
- id: excluded_tax_a
  doc: (for debugging and benchmark purposes)
  type: boolean
  inputBinding:
    prefix: --excluded_taxa
- id: go_evidence
  doc: Defines what type of GO terms should be used for annotation:experimental =
    Use only terms inferred from experimental evidencenon-electronic = Use only non-
    electronically curated terms
  type: string
  inputBinding:
    prefix: --go_evidence
- id: hmm_max_hits
  doc: Max number of hits to report. Default=1
  type: boolean
  inputBinding:
    prefix: --hmm_maxhits
- id: hmm_evalue
  doc: E-value threshold. Default=0.001
  type: boolean
  inputBinding:
    prefix: --hmm_evalue
- id: hmm_score
  doc: Bit score threshold. Default=20
  type: boolean
  inputBinding:
    prefix: --hmm_score
- id: hmm_max_seq_len
  doc: Ignore query sequences larger than `maxseqlen`. Default=5000
  type: boolean
  inputBinding:
    prefix: --hmm_maxseqlen
- id: hmm_q_cov
  doc: min query coverage (from 0 to 1). Default=(disabled)
  type: boolean
  inputBinding:
    prefix: --hmm_qcov
- id: z
  doc: Fixed database size used in phmmer/hmmscan (allows comparing e-values among
    databases). Default=40,000,000
  type: boolean
  inputBinding:
    prefix: --Z
- id: dm_nd_db
  doc: Path to DIAMOND-compatible database
  type: string
  inputBinding:
    prefix: --dmnd_db
- id: matrix
  doc: Scoring matrix
  type: string
  inputBinding:
    prefix: --matrix
- id: gap_open
  doc: Gap open penalty
  type: string
  inputBinding:
    prefix: --gapopen
- id: gap_extend
  doc: Gap extend penalty
  type: string
  inputBinding:
    prefix: --gapextend
- id: query_cover
  doc: Report only alignments above the given percentage of query cover. Default=0
  type: string
  inputBinding:
    prefix: --query-cover
- id: subject_cover
  doc: Report only alignments above the given percentage of subject cover. Default=0
  type: string
  inputBinding:
    prefix: --subject-cover
- id: seed_ortholog_evalue
  doc: Min E-value expected when searching for seed eggNOG ortholog. Applies to phmmer/diamond
    searches. Queries not having a significant seed orthologs will not be annotated.
    Default=0.001
  type: boolean
  inputBinding:
    prefix: --seed_ortholog_evalue
- id: seed_ortholog_score
  doc: Min bit score expected when searching for seed eggNOG ortholog. Applies to
    phmmer/diamond searches. Queries not having a significant seed orthologs will
    not be annotated. Default=60
  type: boolean
  inputBinding:
    prefix: --seed_ortholog_score
- id: output
  doc: ', -o         base name for output files'
  type: boolean
  inputBinding:
    prefix: --output
- id: resume
  doc: Resumes a previous execution skipping reported hits in the output file.
  type: boolean
  inputBinding:
    prefix: --resume
- id: override
  doc: Overwrites output files if they exist.
  type: boolean
  inputBinding:
    prefix: --override
- id: no_refine
  doc: Skip hit refinement, reporting only HMM hits.
  type: boolean
  inputBinding:
    prefix: --no_refine
- id: no_an_not
  doc: Skip functional annotation, reporting only hits
  type: boolean
  inputBinding:
    prefix: --no_annot
- id: no_search
  doc: Skip HMM search mapping. Use existing hits file
  type: boolean
  inputBinding:
    prefix: --no_search
- id: predict_ortho
  doc: The list of predicted orthologs
  type: boolean
  inputBinding:
    prefix: --predict_ortho
- id: report_orthologs
  doc: The list of orthologs used for functional transferred are dumped into a separate
    file
  type: boolean
  inputBinding:
    prefix: --report_orthologs
- id: scratch_dir
  doc: Write output files in a temporary scratch dir, move them to final the final
    output dir when finished. Speed up large computations using network file systems.
  type: boolean
  inputBinding:
    prefix: --scratch_dir
- id: output_dir
  doc: Where output files should be written
  type: boolean
  inputBinding:
    prefix: --output_dir
- id: temp_dir
  doc: Where temporary files are created. Better if this is a local disk.
  type: boolean
  inputBinding:
    prefix: --temp_dir
- id: no_file_comments
  doc: No header lines nor stats are included in the output files
  type: boolean
  inputBinding:
    prefix: --no_file_comments
- id: keep_mapping_files
  doc: Do not delete temporary mapping files used for annotation (i.e. HMMER and DIAMOND
    search outputs)
  type: boolean
  inputBinding:
    prefix: --keep_mapping_files
- id: target_tax_a
  doc: taxa that will be searched for orthologs
  type: string[]
  inputBinding:
    prefix: --target_taxa
- id: predict_output_format
  doc: 'Choose the output format among: per_query, per_species .Default = per_species'
  type: string
  inputBinding:
    prefix: --predict_output_format
- id: m
  doc: Default:hmmer
  type: string
  inputBinding:
    prefix: -m
- id: i
  doc: Input FASTA file containing query sequences
  type: boolean
  inputBinding:
    prefix: -i
- id: translate
  doc: Assume sequences are genes instead of proteins
  type: boolean
  inputBinding:
    prefix: --translate
- id: server_mode
  doc: Loads target database in memory and keeps running in server mode, so another
    instance of eggnog-mapper can connect to this sever. Auto turns on the --usemem
    flag
  type: boolean
  inputBinding:
    prefix: --servermode
- id: use_mem
  doc: If a local hmmpressed database is provided as target using --db, this flag
    will allocate the whole database in memory using hmmpgmd. Database will be unloaded
    after execution.
  type: boolean
  inputBinding:
    prefix: --usemem
- id: annotate_hits_table
  doc: 'Annotatate TSV formatted table of query->hits. 4 fields required: query, hit,
    evalue, score. Implies --no_search and --no_refine.'
  type: boolean
  inputBinding:
    prefix: --annotate_hits_table
outputs: []
cwlVersion: v1.1
baseCommand:
- emapper.py
