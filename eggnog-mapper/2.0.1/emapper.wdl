version 1.0

task Emapper.py {
  input {
    Boolean? tax_scope
    String? target_orthologs
    Boolean? excluded_tax_a
    String? go_evidence
    Boolean? hmm_max_hits
    Boolean? hmm_evalue
    Boolean? hmm_score
    Boolean? hmm_max_seq_len
    Boolean? hmm_q_cov
    Boolean? fixed_database_size
    String? dm_nd_db
    String? matrix
    String? gap_open
    String? gap_extend
    String? query_cover
    String? subject_cover
    Boolean? seed_ortholog_evalue
    Boolean? seed_ortholog_score
    Boolean? o_base_name
    Boolean? resume
    Boolean? override
    Boolean? no_refine
    Boolean? no_an_not
    Boolean? no_search
    Boolean? predict_ortho
    Boolean? report_orthologs
    Boolean? scratch_dir
    Boolean? output_dir
    Boolean? temp_dir
    Boolean? no_file_comments
    Boolean? keep_mapping_files
    Array[String] target_tax_a
    String? predict_output_format
    String? defaulthmmer
    Boolean? input_fasta_file
    Boolean? translate
    Boolean? server_mode
    Boolean? use_mem
    Boolean? annotate_hits_table
    Boolean? guess_db
    Boolean? database
    String? dbtype
  }
  command <<<
    emapper.py \
      ~{true="--tax_scope" false="" tax_scope} \
      ~{if defined(target_orthologs) then ("--target_orthologs " +  '"' + target_orthologs + '"') else ""} \
      ~{true="--excluded_taxa" false="" excluded_tax_a} \
      ~{if defined(go_evidence) then ("--go_evidence " +  '"' + go_evidence + '"') else ""} \
      ~{true="--hmm_maxhits" false="" hmm_max_hits} \
      ~{true="--hmm_evalue" false="" hmm_evalue} \
      ~{true="--hmm_score" false="" hmm_score} \
      ~{true="--hmm_maxseqlen" false="" hmm_max_seq_len} \
      ~{true="--hmm_qcov" false="" hmm_q_cov} \
      ~{true="--Z" false="" fixed_database_size} \
      ~{if defined(dm_nd_db) then ("--dmnd_db " +  '"' + dm_nd_db + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(query_cover) then ("--query-cover " +  '"' + query_cover + '"') else ""} \
      ~{if defined(subject_cover) then ("--subject-cover " +  '"' + subject_cover + '"') else ""} \
      ~{true="--seed_ortholog_evalue" false="" seed_ortholog_evalue} \
      ~{true="--seed_ortholog_score" false="" seed_ortholog_score} \
      ~{true="--output" false="" o_base_name} \
      ~{true="--resume" false="" resume} \
      ~{true="--override" false="" override} \
      ~{true="--no_refine" false="" no_refine} \
      ~{true="--no_annot" false="" no_an_not} \
      ~{true="--no_search" false="" no_search} \
      ~{true="--predict_ortho" false="" predict_ortho} \
      ~{true="--report_orthologs" false="" report_orthologs} \
      ~{true="--scratch_dir" false="" scratch_dir} \
      ~{true="--output_dir" false="" output_dir} \
      ~{true="--temp_dir" false="" temp_dir} \
      ~{true="--no_file_comments" false="" no_file_comments} \
      ~{true="--keep_mapping_files" false="" keep_mapping_files} \
      ~{if defined(target_tax_a) then ("--target_taxa " +  '"' + target_tax_a + '"') else ""} \
      ~{if defined(predict_output_format) then ("--predict_output_format " +  '"' + predict_output_format + '"') else ""} \
      ~{if defined(defaulthmmer) then ("-m " +  '"' + defaulthmmer + '"') else ""} \
      ~{true="-i" false="" input_fasta_file} \
      ~{true="--translate" false="" translate} \
      ~{true="--servermode" false="" server_mode} \
      ~{true="--usemem" false="" use_mem} \
      ~{true="--annotate_hits_table" false="" annotate_hits_table} \
      ~{true="--guessdb" false="" guess_db} \
      ~{true="--database" false="" database} \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""}
  >>>
  parameter_meta {
    tax_scope: "Fix the taxonomic scope used for annotation, so only orthologs from a particular clade are used for functional transfer. By default, this is automatically adjusted for every query sequence."
    target_orthologs: "defines what type of orthologs should be used for functional transfer"
    excluded_tax_a: "(for debugging and benchmark purposes)"
    go_evidence: "Defines what type of GO terms should be used for annotation:experimental = Use only terms inferred from experimental evidencenon-electronic = Use only non- electronically curated terms"
    hmm_max_hits: "Max number of hits to report. Default=1"
    hmm_evalue: "E-value threshold. Default=0.001"
    hmm_score: "Bit score threshold. Default=20"
    hmm_max_seq_len: "Ignore query sequences larger than `maxseqlen`. Default=5000"
    hmm_q_cov: "min query coverage (from 0 to 1). Default=(disabled)"
    fixed_database_size: "Fixed database size used in phmmer/hmmscan (allows comparing e-values among databases). Default=40,000,000"
    dm_nd_db: "Path to DIAMOND-compatible database"
    matrix: "Scoring matrix"
    gap_open: "Gap open penalty"
    gap_extend: "Gap extend penalty"
    query_cover: "Report only alignments above the given percentage of query cover. Default=0"
    subject_cover: "Report only alignments above the given percentage of subject cover. Default=0"
    seed_ortholog_evalue: "Min E-value expected when searching for seed eggNOG ortholog. Applies to phmmer/diamond searches. Queries not having a significant seed orthologs will not be annotated. Default=0.001"
    seed_ortholog_score: "Min bit score expected when searching for seed eggNOG ortholog. Applies to phmmer/diamond searches. Queries not having a significant seed orthologs will not be annotated. Default=60"
    o_base_name: ", -o         base name for output files"
    resume: "Resumes a previous execution skipping reported hits in the output file."
    override: "Overwrites output files if they exist."
    no_refine: "Skip hit refinement, reporting only HMM hits."
    no_an_not: "Skip functional annotation, reporting only hits"
    no_search: "Skip HMM search mapping. Use existing hits file"
    predict_ortho: "The list of predicted orthologs"
    report_orthologs: "The list of orthologs used for functional transferred are dumped into a separate file"
    scratch_dir: "Write output files in a temporary scratch dir, move them to final the final output dir when finished. Speed up large computations using network file systems."
    output_dir: "Where output files should be written"
    temp_dir: "Where temporary files are created. Better if this is a local disk."
    no_file_comments: "No header lines nor stats are included in the output files"
    keep_mapping_files: "Do not delete temporary mapping files used for annotation (i.e. HMMER and DIAMOND search outputs)"
    target_tax_a: "taxa that will be searched for orthologs"
    predict_output_format: "Choose the output format among: per_query, per_species .Default = per_species"
    defaulthmmer: "Default:hmmer"
    input_fasta_file: "Input FASTA file containing query sequences"
    translate: "Assume sequences are genes instead of proteins"
    server_mode: "Loads target database in memory and keeps running in server mode, so another instance of eggnog-mapper can connect to this sever. Auto turns on the --usemem flag"
    use_mem: "If a local hmmpressed database is provided as target using --db, this flag will allocate the whole database in memory using hmmpgmd. Database will be unloaded after execution."
    annotate_hits_table: "Annotatate TSV formatted table of query->hits. 4 fields required: query, hit, evalue, score. Implies --no_search and --no_refine."
    guess_db: ""
    database: ""
    dbtype: ""
  }
}