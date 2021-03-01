version 1.0

task Emapperpy {
  input {
    Boolean? guess_db
    Boolean? database
    String? data_dir
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
    File? dm_nd_db
    String? matrix
    String? gap_open
    String? gap_extend
    Int? query_cover
    Int? subject_cover
    Boolean? seed_ortholog_evalue
    Boolean? seed_ortholog_score
    Boolean? base_name_output
    File? resume
    Boolean? override
    Boolean? no_refine
    Boolean? no_an_not
    Boolean? no_search
    Boolean? predict_ortho
    Boolean? report_orthologs
    File? scratch_dir
    Boolean? output_dir
    Boolean? temp_dir
    Boolean? no_file_comments
    Array[String] target_tax_a
    String? predict_output_format
    String? defaulthmmer
    Boolean? input_fasta_file
    Boolean? translate
    Boolean? server_mode
    Boolean? use_mem
    Boolean? annotate_hits_table
    String files
  }
  command <<<
    emapper_py \
      ~{files} \
      ~{if (guess_db) then "--guessdb" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if defined(data_dir) then ("--data_dir " +  '"' + data_dir + '"') else ""} \
      ~{if (tax_scope) then "--tax_scope" else ""} \
      ~{if defined(target_orthologs) then ("--target_orthologs " +  '"' + target_orthologs + '"') else ""} \
      ~{if (excluded_tax_a) then "--excluded_taxa" else ""} \
      ~{if defined(go_evidence) then ("--go_evidence " +  '"' + go_evidence + '"') else ""} \
      ~{if (hmm_max_hits) then "--hmm_maxhits" else ""} \
      ~{if (hmm_evalue) then "--hmm_evalue" else ""} \
      ~{if (hmm_score) then "--hmm_score" else ""} \
      ~{if (hmm_max_seq_len) then "--hmm_maxseqlen" else ""} \
      ~{if (hmm_q_cov) then "--hmm_qcov" else ""} \
      ~{if (fixed_database_size) then "--Z" else ""} \
      ~{if defined(dm_nd_db) then ("--dmnd_db " +  '"' + dm_nd_db + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(query_cover) then ("--query-cover " +  '"' + query_cover + '"') else ""} \
      ~{if defined(subject_cover) then ("--subject-cover " +  '"' + subject_cover + '"') else ""} \
      ~{if (seed_ortholog_evalue) then "--seed_ortholog_evalue" else ""} \
      ~{if (seed_ortholog_score) then "--seed_ortholog_score" else ""} \
      ~{if (base_name_output) then "--output" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (override) then "--override" else ""} \
      ~{if (no_refine) then "--no_refine" else ""} \
      ~{if (no_an_not) then "--no_annot" else ""} \
      ~{if (no_search) then "--no_search" else ""} \
      ~{if (predict_ortho) then "--predict_ortho" else ""} \
      ~{if (report_orthologs) then "--report_orthologs" else ""} \
      ~{if (scratch_dir) then "--scratch_dir" else ""} \
      ~{if (output_dir) then "--output_dir" else ""} \
      ~{if (temp_dir) then "--temp_dir" else ""} \
      ~{if (no_file_comments) then "--no_file_comments" else ""} \
      ~{if defined(target_tax_a) then ("--target_taxa " +  '"' + target_tax_a + '"') else ""} \
      ~{if defined(predict_output_format) then ("--predict_output_format " +  '"' + predict_output_format + '"') else ""} \
      ~{if defined(defaulthmmer) then ("-m " +  '"' + defaulthmmer + '"') else ""} \
      ~{if (input_fasta_file) then "-i" else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if (server_mode) then "--servermode" else ""} \
      ~{if (use_mem) then "--usemem" else ""} \
      ~{if (annotate_hits_table) then "--annotate_hits_table" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    guess_db: "guess eggnog db based on the provided taxid"
    database: "specify the target database for sequence searches.\\nChoose among: euk,bact,arch, host:port, or a local\\nhmmpressed database"
    data_dir: "Directory to use for DATA_PATH."
    tax_scope: "Fix the taxonomic scope used for annotation, so only\\northologs from a particular clade are used for\\nfunctional transfer. By default, this is automatically\\nadjusted for every query sequence."
    target_orthologs: "defines what type of orthologs should be used for\\nfunctional transfer"
    excluded_tax_a: "(for debugging and benchmark purposes)"
    go_evidence: "Defines what type of GO terms should be used for\\nannotation:experimental = Use only terms inferred from\\nexperimental evidencenon-electronic = Use only non-\\nelectronically curated terms"
    hmm_max_hits: "Max number of hits to report. Default=1"
    hmm_evalue: "E-value threshold. Default=0.001"
    hmm_score: "Bit score threshold. Default=20"
    hmm_max_seq_len: "Ignore query sequences larger than `maxseqlen`.\\nDefault=5000"
    hmm_q_cov: "min query coverage (from 0 to 1). Default=(disabled)"
    fixed_database_size: "Fixed database size used in phmmer/hmmscan (allows\\ncomparing e-values among databases).\\nDefault=40,000,000"
    dm_nd_db: "Path to DIAMOND-compatible database"
    matrix: "Scoring matrix"
    gap_open: "Gap open penalty"
    gap_extend: "Gap extend penalty"
    query_cover: "Report only alignments above the given percentage of\\nquery cover. Default=0"
    subject_cover: "Report only alignments above the given percentage of\\nsubject cover. Default=0"
    seed_ortholog_evalue: "Min E-value expected when searching for seed eggNOG\\northolog. Applies to phmmer/diamond searches. Queries\\nnot having a significant seed orthologs will not be\\nannotated. Default=0.001"
    seed_ortholog_score: "Min bit score expected when searching for seed eggNOG\\northolog. Applies to phmmer/diamond searches. Queries\\nnot having a significant seed orthologs will not be\\nannotated. Default=60"
    base_name_output: "base name for output files"
    resume: "Resumes a previous execution skipping reported hits in\\nthe output file."
    override: "Overwrites output files if they exist."
    no_refine: "Skip hit refinement, reporting only HMM hits."
    no_an_not: "Skip functional annotation, reporting only hits"
    no_search: "Skip HMM search mapping. Use existing hits file"
    predict_ortho: "The list of predicted orthologs"
    report_orthologs: "The list of orthologs used for functional transferred\\nare dumped into a separate file"
    scratch_dir: "Write output files in a temporary scratch dir, move\\nthem to final the final output dir when finished.\\nSpeed up large computations using network file\\nsystems."
    output_dir: "Where output files should be written"
    temp_dir: "Where temporary files are created. Better if this is a\\nlocal disk."
    no_file_comments: "No header lines nor stats are included in the output"
    target_tax_a: "taxa that will be searched for orthologs"
    predict_output_format: "Choose the output format among: per_query, per_species\\n.Default = per_species"
    defaulthmmer: "Default:hmmer"
    input_fasta_file: "Input FASTA file containing query sequences"
    translate: "Assume sequences are genes instead of proteins"
    server_mode: "Loads target database in memory and keeps running in\\nserver mode, so another instance of eggnog-mapper can\\nconnect to this sever. Auto turns on the --usemem flag"
    use_mem: "If a local hmmpressed database is provided as target\\nusing --db, this flag will allocate the whole database\\nin memory using hmmpgmd. Database will be unloaded\\nafter execution."
    annotate_hits_table: "Annotatate TSV formatted table of query->hits. 4\\nfields required: query, hit, evalue, score. Implies\\n--no_search and --no_refine.\\n"
    files: "--keep_mapping_files  Do not delete temporary mapping files used for"
  }
  output {
    File out_stdout = stdout()
    File out_resume = "${in_resume}"
    File out_scratch_dir = "${in_scratch_dir}"
  }
}