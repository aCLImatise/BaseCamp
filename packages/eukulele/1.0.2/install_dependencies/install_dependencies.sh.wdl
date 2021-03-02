version 1.0

task InstallDependenciessh {
  input {
    Boolean? help
    Boolean? version
    File? query
    Int? query_loc
    Boolean? string_permissible_values
    String? db
    File? out
    Int? evalue
    Boolean? word_size
    Int? gap_open
    Int? gap_extend
    Int? matrix
    Boolean? threshold
    Int? comp_based_stats
    File? subject
    Int? subject_loc
    Int? out_fmt
    Boolean? show_gis
    Boolean? num_descriptions
    Boolean? num_alignments
    Boolean? line_length
    Boolean? html
    String? seg
    Boolean? soft_masking
    Boolean? l_case_masking
    String? gi_list
    String? seq_id_list
    String? negative_gi_list
    String? entrez_query
    String? db_soft_mask
    String? db_hard_mask
    Boolean? q_cov_hsp_perc
    Boolean? max_hsps
    Boolean? culling_limit
    Boolean? best_hit_overhang
    Boolean? best_hit_score_edge
    Boolean? max_target_seqs
    Int? db_size
    Boolean? search_sp
    Boolean? sum_stats
    File? import_search_strategy
    File? export_search_strategy
    String? x_drop_un_gap
    String? x_drop_gap
    String? x_drop_gap_final
    Boolean? window_size
    Boolean? un_gapped
    Boolean? parse_def_lines
    Boolean? num_threads
    Boolean? remote
    Boolean? use_sw_t_back
  }
  command <<<
    install_dependencies_sh \
      ~{if (help) then "-help" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(query_loc) then ("-query_loc " +  '"' + query_loc + '"') else ""} \
      ~{if (string_permissible_values) then "-task" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(evalue) then ("-evalue " +  '"' + evalue + '"') else ""} \
      ~{if (word_size) then "-word_size" else ""} \
      ~{if defined(gap_open) then ("-gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("-gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if defined(comp_based_stats) then ("-comp_based_stats " +  '"' + comp_based_stats + '"') else ""} \
      ~{if defined(subject) then ("-subject " +  '"' + subject + '"') else ""} \
      ~{if defined(subject_loc) then ("-subject_loc " +  '"' + subject_loc + '"') else ""} \
      ~{if defined(out_fmt) then ("-outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if (show_gis) then "-show_gis" else ""} \
      ~{if (num_descriptions) then "-num_descriptions" else ""} \
      ~{if (num_alignments) then "-num_alignments" else ""} \
      ~{if (line_length) then "-line_length" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if defined(seg) then ("-seg " +  '"' + seg + '"') else ""} \
      ~{if defined(soft_masking) then ("-soft_masking " +  '"' + soft_masking + '"') else ""} \
      ~{if (l_case_masking) then "-lcase_masking" else ""} \
      ~{if defined(gi_list) then ("-gilist " +  '"' + gi_list + '"') else ""} \
      ~{if defined(seq_id_list) then ("-seqidlist " +  '"' + seq_id_list + '"') else ""} \
      ~{if defined(negative_gi_list) then ("-negative_gilist " +  '"' + negative_gi_list + '"') else ""} \
      ~{if defined(entrez_query) then ("-entrez_query " +  '"' + entrez_query + '"') else ""} \
      ~{if defined(db_soft_mask) then ("-db_soft_mask " +  '"' + db_soft_mask + '"') else ""} \
      ~{if defined(db_hard_mask) then ("-db_hard_mask " +  '"' + db_hard_mask + '"') else ""} \
      ~{if (q_cov_hsp_perc) then "-qcov_hsp_perc" else ""} \
      ~{if (max_hsps) then "-max_hsps" else ""} \
      ~{if (culling_limit) then "-culling_limit" else ""} \
      ~{if (best_hit_overhang) then "-best_hit_overhang" else ""} \
      ~{if (best_hit_score_edge) then "-best_hit_score_edge" else ""} \
      ~{if (max_target_seqs) then "-max_target_seqs" else ""} \
      ~{if defined(db_size) then ("-dbsize " +  '"' + db_size + '"') else ""} \
      ~{if (search_sp) then "-searchsp" else ""} \
      ~{if defined(sum_stats) then ("-sum_stats " +  '"' + sum_stats + '"') else ""} \
      ~{if defined(import_search_strategy) then ("-import_search_strategy " +  '"' + import_search_strategy + '"') else ""} \
      ~{if defined(export_search_strategy) then ("-export_search_strategy " +  '"' + export_search_strategy + '"') else ""} \
      ~{if defined(x_drop_un_gap) then ("-xdrop_ungap " +  '"' + x_drop_un_gap + '"') else ""} \
      ~{if defined(x_drop_gap) then ("-xdrop_gap " +  '"' + x_drop_gap + '"') else ""} \
      ~{if defined(x_drop_gap_final) then ("-xdrop_gap_final " +  '"' + x_drop_gap_final + '"') else ""} \
      ~{if (window_size) then "-window_size" else ""} \
      ~{if (un_gapped) then "-ungapped" else ""} \
      ~{if (parse_def_lines) then "-parse_deflines" else ""} \
      ~{if (num_threads) then "-num_threads" else ""} \
      ~{if (remote) then "-remote" else ""} \
      ~{if (use_sw_t_back) then "-use_sw_tback" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1"
  }
  parameter_meta {
    help: "Print USAGE, DESCRIPTION and ARGUMENTS; ignore all other parameters"
    version: "Print version number;  ignore other arguments"
    query: "Input file name\\nDefault = `-'"
    query_loc: "Location on the query sequence in 1-based offsets (Format: start-stop)"
    string_permissible_values: "<String, Permissible values: 'blastp' 'blastp-fast' 'blastp-short' >\\nTask to execute\\nDefault = `blastp'"
    db: "BLAST database name\\n* Incompatible with:  subject, subject_loc"
    out: "Output file name\\nDefault = `-'"
    evalue: "Expectation value (E) threshold for saving hits\\nDefault = `10'"
    word_size: "<Integer, >=2>\\nWord size for wordfinder algorithm"
    gap_open: "Cost to open a gap"
    gap_extend: "Cost to extend a gap"
    matrix: "Scoring matrix name (normally BLOSUM62)"
    threshold: "<Real, >=0>\\nMinimum word score such that the word is added to the BLAST lookup table"
    comp_based_stats: "Use composition-based statistics:\\nD or d: default (equivalent to 2 )\\n0 or F or f: No composition-based statistics\\n1: Composition-based statistics as in NAR 29:2994-3005, 2001\\n2 or T or t : Composition-based score adjustment as in Bioinformatics\\n21:902-911,\\n2005, conditioned on sequence properties\\n3: Composition-based score adjustment as in Bioinformatics 21:902-911,\\n2005, unconditionally\\nDefault = `2'"
    subject: "Subject sequence(s) to search\\n* Incompatible with:  db, gilist, seqidlist, negative_gilist,\\ndb_soft_mask, db_hard_mask"
    subject_loc: "Location on the subject sequence in 1-based offsets (Format: start-stop)\\n* Incompatible with:  db, gilist, seqidlist, negative_gilist,\\ndb_soft_mask, db_hard_mask, remote"
    out_fmt: "alignment view options:\\n0 = pairwise,\\n1 = query-anchored showing identities,\\n2 = query-anchored no identities,\\n3 = flat query-anchored, show identities,\\n4 = flat query-anchored, no identities,\\n5 = XML Blast output,\\n6 = tabular,\\n7 = tabular with comment lines,\\n8 = Text ASN.1,\\n9 = Binary ASN.1,\\n10 = Comma-separated values,\\n11 = BLAST archive format (ASN.1),\\n12 = JSON Seqalign output,\\n13 = JSON Blast output,\\n14 = XML2 Blast output\\nOptions 6, 7, and 10 can be additionally configured to produce\\na custom format specified by space delimited format specifiers.\\nThe supported format specifiers are:\\nqseqid means Query Seq-id\\nqgi means Query GI\\nqacc means Query accesion\\nqaccver means Query accesion.version\\nqlen means Query sequence length\\nsseqid means Subject Seq-id\\nsallseqid means All subject Seq-id(s), separated by a ';'\\nsgi means Subject GI\\nsallgi means All subject GIs\\nsacc means Subject accession\\nsaccver means Subject accession.version\\nsallacc means All subject accessions\\nslen means Subject sequence length\\nqstart means Start of alignment in query\\nqend means End of alignment in query\\nsstart means Start of alignment in subject\\nsend means End of alignment in subject\\nqseq means Aligned part of query sequence\\nsseq means Aligned part of subject sequence\\nevalue means Expect value\\nbitscore means Bit score\\nscore means Raw score\\nlength means Alignment length\\npident means Percentage of identical matches\\nnident means Number of identical matches\\nmismatch means Number of mismatches\\npositive means Number of positive-scoring matches\\ngapopen means Number of gap openings\\ngaps means Total number of gaps\\nppos means Percentage of positive-scoring matches\\nframes means Query and subject frames separated by a '/'\\nqframe means Query frame\\nsframe means Subject frame\\nbtop means Blast traceback operations (BTOP)\\nstaxids means unique Subject Taxonomy ID(s), separated by a ';'\\n(in numerical order)\\nsscinames means unique Subject Scientific Name(s), separated by a ';'\\nscomnames means unique Subject Common Name(s), separated by a ';'\\nsblastnames means unique Subject Blast Name(s), separated by a ';'\\n(in alphabetical order)\\nsskingdoms means unique Subject Super Kingdom(s), separated by a ';'\\n(in alphabetical order)\\nstitle means Subject Title\\nsalltitles means All Subject Title(s), separated by a '<>'\\nsstrand means Subject Strand\\nqcovs means Query Coverage Per Subject\\nqcovhsp means Query Coverage Per HSP\\nWhen not provided, the default value is:\\n'qseqid sseqid pident length mismatch gapopen qstart qend sstart send\\nevalue bitscore', which is equivalent to the keyword 'std'\\nDefault = `0'"
    show_gis: "Show NCBI GIs in deflines?"
    num_descriptions: "<Integer, >=0>\\nNumber of database sequences to show one-line descriptions for\\nNot applicable for outfmt > 4\\nDefault = `500'\\n* Incompatible with:  max_target_seqs"
    num_alignments: "<Integer, >=0>\\nNumber of database sequences to show alignments for\\nDefault = `250'\\n* Incompatible with:  max_target_seqs"
    line_length: "<Integer, >=1>\\nLine length for formatting alignments\\nNot applicable for outfmt > 4\\nDefault = `60'"
    html: "Produce HTML output?"
    seg: "Filter query sequence with SEG (Format: 'yes', 'window locut hicut', or\\n'no' to disable)\\nDefault = `no'"
    soft_masking: "Apply filtering locations as soft masks\\nDefault = `false'"
    l_case_masking: "Use lower case filtering in query and subject sequence(s)?"
    gi_list: "Restrict search of database to list of GI's\\n* Incompatible with:  negative_gilist, seqidlist, remote, subject,\\nsubject_loc"
    seq_id_list: "Restrict search of database to list of SeqId's\\n* Incompatible with:  gilist, negative_gilist, remote, subject,\\nsubject_loc"
    negative_gi_list: "Restrict search of database to everything except the listed GIs\\n* Incompatible with:  gilist, seqidlist, remote, subject, subject_loc"
    entrez_query: "Restrict search with the given Entrez query\\n* Requires:  remote"
    db_soft_mask: "Filtering algorithm ID to apply to the BLAST database as soft masking\\n* Incompatible with:  db_hard_mask, subject, subject_loc"
    db_hard_mask: "Filtering algorithm ID to apply to the BLAST database as hard masking\\n* Incompatible with:  db_soft_mask, subject, subject_loc"
    q_cov_hsp_perc: "<Real, 0..100>\\nPercent query coverage per hsp"
    max_hsps: "<Integer, >=1>\\nSet maximum number of HSPs per subject sequence to save for each query"
    culling_limit: "<Integer, >=0>\\nIf the query range of a hit is enveloped by that of at least this many\\nhigher-scoring hits, delete the hit\\n* Incompatible with:  best_hit_overhang, best_hit_score_edge"
    best_hit_overhang: "<Real, (>0 and <0.5)>\\nBest Hit algorithm overhang value (recommended value: 0.1)\\n* Incompatible with:  culling_limit"
    best_hit_score_edge: "<Real, (>0 and <0.5)>\\nBest Hit algorithm score edge value (recommended value: 0.1)\\n* Incompatible with:  culling_limit"
    max_target_seqs: "<Integer, >=1>\\nMaximum number of aligned sequences to keep\\nNot applicable for outfmt <= 4\\nDefault = `500'\\n* Incompatible with:  num_descriptions, num_alignments"
    db_size: "Effective length of the database"
    search_sp: "<Int8, >=0>\\nEffective length of the search space"
    sum_stats: "Use sum statistics"
    import_search_strategy: "Search strategy to use\\n* Incompatible with:  export_search_strategy"
    export_search_strategy: "File name to record the search strategy used\\n* Incompatible with:  import_search_strategy"
    x_drop_un_gap: "X-dropoff value (in bits) for ungapped extensions"
    x_drop_gap: "X-dropoff value (in bits) for preliminary gapped extensions"
    x_drop_gap_final: "X-dropoff value (in bits) for final gapped alignment"
    window_size: "<Integer, >=0>\\nMultiple hits window size, use 0 to specify 1-hit algorithm"
    un_gapped: "Perform ungapped alignment only?"
    parse_def_lines: "Should the query and subject defline(s) be parsed?"
    num_threads: "<Integer, >=1>\\nNumber of threads (CPUs) to use in the BLAST search\\nDefault = `1'\\n* Incompatible with:  remote"
    remote: "Execute search remotely?\\n* Incompatible with:  gilist, seqidlist, negative_gilist, subject_loc,\\nnum_threads"
    use_sw_t_back: "Compute locally optimal Smith-Waterman alignments?"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_export_search_strategy = "${in_export_search_strategy}"
  }
}