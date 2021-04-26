version 1.0

task Diamond {
  input {
    Boolean? threads
    Boolean? db
    File? out
    Boolean? out_fmt
    Boolean? verbose
    Boolean? log
    Boolean? quiet
    Boolean? header
    Boolean? in
    Boolean? taxon_map
    Boolean? tax_on_nodes
    Boolean? tax_on_names
    Boolean? query
    Boolean? strand
    Boolean? un
    Boolean? al
    Boolean? un_fmt
    Boolean? al_fmt
    Boolean? unal
    Boolean? max_target_seqs
    Boolean? top
    Boolean? max_hsps
    Boolean? range_culling
    Boolean? compress
    Boolean? evalue
    Boolean? min_score
    Boolean? id
    Boolean? query_cover
    Boolean? subject_cover
    Boolean? mid_sensitive
    Boolean? sensitive
    Boolean? more_sensitive
    Boolean? very_sensitive
    Boolean? ultra_sensitive
    Boolean? block_size
    Boolean? index_chunks
    Boolean? tmpdir
    Boolean? parallel_tmpdir
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? frameshift
    Boolean? long_reads
    Boolean? matrix
    Boolean? custom_matrix
    Boolean? comp_based_stats
    Boolean? masking
    Boolean? query_gen_code
    Boolean? s_all_titles
    Boolean? s_all_seq_id
    Boolean? no_self_hits
    Boolean? taxon_list
    Boolean? tax_on_exclude
    Boolean? seq_id_list
    Boolean? skip_missing_seq_ids
    Boolean? algo
    Boolean? bin
    Boolean? min_orf
    Boolean? freq_sd
    Boolean? id_two
    Boolean? x_drop
    Boolean? gapped_filter_evalue
    Boolean? band
    Boolean? shapes
    Boolean? shape_mask
    Boolean? multiprocessing
    Boolean? mp_in_it
    Boolean? mp_recover
    Boolean? ext_chunk_size
    Boolean? no_ranking
    Boolean? ext
    Boolean? culling_overlap
    Boolean? tax_on_k
    Boolean? range_cover
    Boolean? db_size
    Boolean? no_auto_append
    Boolean? xml_b_lord_format
    Boolean? stop_match_score
    Boolean? tant_an_min_mask_prob
    Boolean? file_buffer_size
    Boolean? memory_limit
    Boolean? no_unlink
    Boolean? target_indexed
    Boolean? da_a
    Boolean? forward_only
    Boolean? seq
  }
  command <<<
    diamond \
      ~{if (threads) then "--threads" else ""} \
      ~{if (db) then "--db" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (out_fmt) then "--outfmt" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if (taxon_map) then "--taxonmap" else ""} \
      ~{if (tax_on_nodes) then "--taxonnodes" else ""} \
      ~{if (tax_on_names) then "--taxonnames" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (un) then "--un" else ""} \
      ~{if (al) then "--al" else ""} \
      ~{if (un_fmt) then "--unfmt" else ""} \
      ~{if (al_fmt) then "--alfmt" else ""} \
      ~{if (unal) then "--unal" else ""} \
      ~{if (max_target_seqs) then "--max-target-seqs" else ""} \
      ~{if (top) then "--top" else ""} \
      ~{if (max_hsps) then "--max-hsps" else ""} \
      ~{if (range_culling) then "--range-culling" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (evalue) then "--evalue" else ""} \
      ~{if (min_score) then "--min-score" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (query_cover) then "--query-cover" else ""} \
      ~{if (subject_cover) then "--subject-cover" else ""} \
      ~{if (mid_sensitive) then "--mid-sensitive" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (more_sensitive) then "--more-sensitive" else ""} \
      ~{if (very_sensitive) then "--very-sensitive" else ""} \
      ~{if (ultra_sensitive) then "--ultra-sensitive" else ""} \
      ~{if (block_size) then "--block-size" else ""} \
      ~{if (index_chunks) then "--index-chunks" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (parallel_tmpdir) then "--parallel-tmpdir" else ""} \
      ~{if (gap_open) then "--gapopen" else ""} \
      ~{if (gap_extend) then "--gapextend" else ""} \
      ~{if (frameshift) then "--frameshift" else ""} \
      ~{if (long_reads) then "--long-reads" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (custom_matrix) then "--custom-matrix" else ""} \
      ~{if (comp_based_stats) then "--comp-based-stats" else ""} \
      ~{if (masking) then "--masking" else ""} \
      ~{if (query_gen_code) then "--query-gencode" else ""} \
      ~{if (s_all_titles) then "--salltitles" else ""} \
      ~{if (s_all_seq_id) then "--sallseqid" else ""} \
      ~{if (no_self_hits) then "--no-self-hits" else ""} \
      ~{if (taxon_list) then "--taxonlist" else ""} \
      ~{if (tax_on_exclude) then "--taxon-exclude" else ""} \
      ~{if (seq_id_list) then "--seqidlist" else ""} \
      ~{if (skip_missing_seq_ids) then "--skip-missing-seqids" else ""} \
      ~{if (algo) then "--algo" else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if (min_orf) then "--min-orf" else ""} \
      ~{if (freq_sd) then "--freq-sd" else ""} \
      ~{if (id_two) then "--id2" else ""} \
      ~{if (x_drop) then "--xdrop" else ""} \
      ~{if (gapped_filter_evalue) then "--gapped-filter-evalue" else ""} \
      ~{if (band) then "--band" else ""} \
      ~{if (shapes) then "--shapes" else ""} \
      ~{if (shape_mask) then "--shape-mask" else ""} \
      ~{if (multiprocessing) then "--multiprocessing" else ""} \
      ~{if (mp_in_it) then "--mp-init" else ""} \
      ~{if (mp_recover) then "--mp-recover" else ""} \
      ~{if (ext_chunk_size) then "--ext-chunk-size" else ""} \
      ~{if (no_ranking) then "--no-ranking" else ""} \
      ~{if (ext) then "--ext" else ""} \
      ~{if (culling_overlap) then "--culling-overlap" else ""} \
      ~{if (tax_on_k) then "--taxon-k" else ""} \
      ~{if (range_cover) then "--range-cover" else ""} \
      ~{if (db_size) then "--dbsize" else ""} \
      ~{if (no_auto_append) then "--no-auto-append" else ""} \
      ~{if (xml_b_lord_format) then "--xml-blord-format" else ""} \
      ~{if (stop_match_score) then "--stop-match-score" else ""} \
      ~{if (tant_an_min_mask_prob) then "--tantan-minMaskProb" else ""} \
      ~{if (file_buffer_size) then "--file-buffer-size" else ""} \
      ~{if (memory_limit) then "--memory-limit" else ""} \
      ~{if (no_unlink) then "--no-unlink" else ""} \
      ~{if (target_indexed) then "--target-indexed" else ""} \
      ~{if (da_a) then "--daa" else ""} \
      ~{if (forward_only) then "--forwardonly" else ""} \
      ~{if (seq) then "--seq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/diamond:2.0.9--hdcc8f71_0"
  }
  parameter_meta {
    threads: "(-p)           number of CPU threads"
    db: "(-d)                database file"
    out: "(-o)               output file"
    out_fmt: "(-f)            output format\\n0   = BLAST pairwise\\n5   = BLAST XML\\n6   = BLAST tabular\\n100 = DIAMOND alignment archive (DAA)\\n101 = SAM\\nValue 6 may be followed by a space-separated list of these keywords:\\nqseqid means Query Seq - id\\nqlen means Query sequence length\\nsseqid means Subject Seq - id\\nsallseqid means All subject Seq - id(s), separated by a ';'\\nslen means Subject sequence length\\nqstart means Start of alignment in query\\nqend means End of alignment in query\\nsstart means Start of alignment in subject\\nsend means End of alignment in subject\\nqseq means Aligned part of query sequence\\nqseq_translated means Aligned part of query sequence (translated)\\nfull_qseq means Query sequence\\nfull_qseq_mate means Query sequence of the mate\\nsseq means Aligned part of subject sequence\\nfull_sseq means Subject sequence\\nevalue means Expect value\\nbitscore means Bit score\\nscore means Raw score\\nlength means Alignment length\\npident means Percentage of identical matches\\nnident means Number of identical matches\\nmismatch means Number of mismatches\\npositive means Number of positive - scoring matches\\ngapopen means Number of gap openings\\ngaps means Total number of gaps\\nppos means Percentage of positive - scoring matches\\nqframe means Query frame\\nbtop means Blast traceback operations(BTOP)\\ncigar means CIGAR string\\nstaxids means unique Subject Taxonomy ID(s), separated by a ';' (in numerical order)\\nsscinames means unique Subject Scientific Name(s), separated by a ';'\\nsskingdoms means unique Subject Super Kingdom(s), separated by a ';'\\nskingdoms means unique Subject Kingdom(s), separated by a ';'\\nsphylums means unique Subject Phylum(s), separated by a ';'\\nstitle means Subject Title\\nsalltitles means All Subject Title(s), separated by a '<>'\\nqcovhsp means Query Coverage Per HSP\\nscovhsp means Subject Coverage Per HSP\\nqtitle means Query title\\nqqual means Query quality values for the aligned part of the query\\nfull_qqual means Query quality values\\nqstrand means Query strand\\nDefault: qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore"
    verbose: "(-v)           verbose console output"
    log: "enable debug log"
    quiet: "disable console output"
    header: "Write header lines to blast tabular format."
    in: "input reference file in FASTA format"
    taxon_map: "protein accession to taxid mapping file"
    tax_on_nodes: "taxonomy nodes.dmp from NCBI"
    tax_on_names: "taxonomy names.dmp from NCBI"
    query: "(-q)             input query file"
    strand: "query strands to search (both/minus/plus)"
    un: "file for unaligned queries"
    al: "file or aligned queries"
    un_fmt: "format of unaligned query file (fasta/fastq)"
    al_fmt: "format of aligned query file (fasta/fastq)"
    unal: "report unaligned queries (0=no, 1=yes)"
    max_target_seqs: "(-k)   maximum number of target sequences to report alignments for (default=25)"
    top: "report alignments within this percentage range of top alignment score (overrides --max-target-seqs)"
    max_hsps: "maximum number of HSPs per target sequence to report for each query (default=1)"
    range_culling: "restrict hit culling to overlapping query ranges"
    compress: "compression for output files (0=none, 1=gzip)"
    evalue: "(-e)            maximum e-value to report alignments (default=0.001)"
    min_score: "minimum bit score to report alignments (overrides e-value setting)"
    id: "minimum identity% to report an alignment"
    query_cover: "minimum query cover% to report an alignment"
    subject_cover: "minimum subject cover% to report an alignment"
    mid_sensitive: "enable mid-sensitive mode (default: fast)"
    sensitive: "enable sensitive mode (default: fast)"
    more_sensitive: "enable more sensitive mode (default: fast)"
    very_sensitive: "enable very sensitive mode (default: fast)"
    ultra_sensitive: "enable ultra sensitive mode (default: fast)"
    block_size: "(-b)        sequence block size in billions of letters (default=2.0)"
    index_chunks: "(-c)      number of chunks for index processing (default=4)"
    tmpdir: "(-t)            directory for temporary files"
    parallel_tmpdir: "directory for temporary files used by multiprocessing"
    gap_open: "gap open penalty"
    gap_extend: "gap extension penalty"
    frameshift: "(-F)        frame shift penalty (default=disabled)"
    long_reads: "short for --range-culling --top 10 -F 15"
    matrix: "score matrix for protein alignment (default=BLOSUM62)"
    custom_matrix: "file containing custom scoring matrix"
    comp_based_stats: "composition based statistics mode (0-4)"
    masking: "enable tantan masking of repeat regions (0/1=default)"
    query_gen_code: "genetic code to use to translate query (see user manual)"
    s_all_titles: "include full subject titles in DAA file"
    s_all_seq_id: "include all subject ids in DAA file"
    no_self_hits: "suppress reporting of identical self hits"
    taxon_list: "restrict search to list of taxon ids (comma-separated)"
    tax_on_exclude: "exclude list of taxon ids (comma-separated)"
    seq_id_list: "filter the database by list of accessions"
    skip_missing_seq_ids: "ignore accessions missing in the database"
    algo: "Seed search algorithm (0=double-indexed/1=query-indexed)"
    bin: "number of query bins for seed search"
    min_orf: "(-l)           ignore translated sequences without an open reading frame of at least this length"
    freq_sd: "number of standard deviations for ignoring frequent seeds"
    id_two: "minimum number of identities for stage 1 hit"
    x_drop: "(-x)             xdrop for ungapped alignment"
    gapped_filter_evalue: "E-value threshold for gapped filter (auto)"
    band: "band for dynamic programming computation"
    shapes: "(-s)            number of seed shapes (default=all available)"
    shape_mask: "seed shapes"
    multiprocessing: "enable distributed-memory parallel processing"
    mp_in_it: "initialize multiprocessing run"
    mp_recover: "enable continuation of interrupted multiprocessing run"
    ext_chunk_size: "chunk size for adaptive ranking (default=auto)"
    no_ranking: "disable ranking heuristic"
    ext: "Extension mode (banded-fast/banded-slow/full)"
    culling_overlap: "minimum range overlap with higher scoring hit to delete a hit (default=50%)"
    tax_on_k: "maximum number of targets to report per species"
    range_cover: "percentage of query range to be covered for range culling (default=50%)"
    db_size: "effective database size (in letters)"
    no_auto_append: "disable auto appending of DAA and DMND file extensions"
    xml_b_lord_format: "Use gnl|BL_ORD_ID| style format in XML output"
    stop_match_score: "Set the match score of stop codons against each other."
    tant_an_min_mask_prob: "minimum repeat probability for masking (default=0.9)"
    file_buffer_size: "file buffer size in bytes (default=67108864)"
    memory_limit: "(-M)      Memory limit for extension stage in GB"
    no_unlink: "Do not unlink temporary files."
    target_indexed: "Enable target-indexed mode"
    da_a: "(-a)               DIAMOND alignment archive (DAA) file"
    forward_only: "only show alignments of forward strand"
    seq: "Sequence numbers to display."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}