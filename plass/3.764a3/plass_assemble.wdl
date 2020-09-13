version 1.0

task PlassAssemble {
  input {
    Boolean? add_self_matches
    Int? alph_size
    Int? mask
    Int? mask_lower_case
    Int? kmer_size_range
    Int? split_memory_limit
    Float? extend_sequences_evalue
    Float? list_matches_fraction
    Boolean? add_string_convert
    Int? cov_mode
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? km_er_per_seq
    Boolean? adjust_km_er_len
    Int? hash_shift
    Int? include_only_extendable
    Int? ignore_multi_km_er
    Int? num_iterations
    Int? re_score_mode
    Boolean? wrapped_scoring
    Int? min_length
    Int? max_length
    Int? max_gaps
    Int? contig_start_mode
    Int? contig_end_mode
    Int? orf_start_mode
    Int? forward_frames
    Int? reverse_frames
    Int? translation_table
    Int? translate
    Boolean? use_all_table_starts
    Int? id_offset
    Float? protein_filter_threshold
    Int? filter_proteins
    Int? delete_tmp_inc
    Boolean? remove_tmp_files
    File? sub_mat
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_nothing
    Int? max_seq_len
    Int? mpi_runner
    Boolean? filter_hits
    Int? sort_results
    Float? km_er_per_seq_scale
    Int? create_lookup
  }
  command <<<
    plass assemble \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(kmer_size_range) then ("-k " +  '"' + kmer_size_range + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(extend_sequences_evalue) then ("-e " +  '"' + extend_sequences_evalue + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if (add_string_convert) then "-a" else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if (adjust_km_er_len) then "--adjust-kmer-len" else ""} \
      ~{if defined(hash_shift) then ("--hash-shift " +  '"' + hash_shift + '"') else ""} \
      ~{if defined(include_only_extendable) then ("--include-only-extendable " +  '"' + include_only_extendable + '"') else ""} \
      ~{if defined(ignore_multi_km_er) then ("--ignore-multi-kmer " +  '"' + ignore_multi_km_er + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if (wrapped_scoring) then "--wrapped-scoring" else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_gaps) then ("--max-gaps " +  '"' + max_gaps + '"') else ""} \
      ~{if defined(contig_start_mode) then ("--contig-start-mode " +  '"' + contig_start_mode + '"') else ""} \
      ~{if defined(contig_end_mode) then ("--contig-end-mode " +  '"' + contig_end_mode + '"') else ""} \
      ~{if defined(orf_start_mode) then ("--orf-start-mode " +  '"' + orf_start_mode + '"') else ""} \
      ~{if defined(forward_frames) then ("--forward-frames " +  '"' + forward_frames + '"') else ""} \
      ~{if defined(reverse_frames) then ("--reverse-frames " +  '"' + reverse_frames + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if (use_all_table_starts) then "--use-all-table-starts" else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(protein_filter_threshold) then ("--protein-filter-threshold " +  '"' + protein_filter_threshold + '"') else ""} \
      ~{if defined(filter_proteins) then ("--filter-proteins " +  '"' + filter_proteins + '"') else ""} \
      ~{if defined(delete_tmp_inc) then ("--delete-tmp-inc " +  '"' + delete_tmp_inc + '"') else ""} \
      ~{if (remove_tmp_files) then "--remove-tmp-files" else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_nothing) then ("-v " +  '"' + verbosity_level_nothing + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if (filter_hits) then "--filter-hits" else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""}
  >>>
  parameter_meta {
    add_self_matches: "artificially add entries of queries with themselves (for clustering)"
    alph_size: "alphabet size (range 2-21) [13]"
    mask: "mask sequences in k-mer stage 0: w/o low complexity masking, 1: with low complexity masking [0]"
    mask_lower_case: "lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    kmer_size_range: "k-mer size in the range (0: set automatically to optimum) [14]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available system memory. [0]"
    extend_sequences_evalue: "Extend sequences if the E-value is below [0.0, inf] [0.000]"
    list_matches_fraction: "list matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    add_string_convert: "add backtrace string (convert to alignments with mmseqs convertalis utility)"
    cov_mode: "0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs to be at least x% of query length, 4: query seq. length needs to be at least x% of target length 5: short seq. needs to be at least x% of the other seq. length [0]"
    min_seq_id: "Overlap sequence identity threshold [0.0, 1.0] [0.900]"
    min_aln_len: "minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    km_er_per_seq: "kmer per sequence [60]"
    adjust_km_er_len: "adjust k-mer length based on specificity (only for nucleotides)"
    hash_shift: "Shift k-mer hash [5]"
    include_only_extendable: "Include only extendable [1, set to 0 to disable]"
    ignore_multi_km_er: "Skip kmers occuring multiple times (>=2) [1, set to 0 to disable]"
    num_iterations: "Number of assembly iterations [1, inf] [12]"
    re_score_mode: "Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only), 2: local alignment, 3: global alignment or 4: longest alignment fullfilling window quality criterion [3]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start"
    min_length: "minimum codon number in open reading frames [45]"
    max_length: "maximum codon number in open reading frames [32734]"
    max_gaps: "maximum number of codons with gaps or unknown residues before an open reading frame is rejected [2147483647]"
    contig_start_mode: "Contig start can be 0: incomplete, 1: complete, 2: both [2]"
    contig_end_mode: "Contig end can be 0: incomplete, 1: complete, 2: both  [2]"
    orf_start_mode: "Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle) [1]"
    forward_frames: "comma-seperated list of ORF frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "comma-seperated list of ORF frames on the reverse strand to be extracted [1,2,3]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    translate: "translate ORF to amino acid [0]"
    use_all_table_starts: "use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "numeric ids in index file are offset by this value  [0]"
    protein_filter_threshold: "filter proteins lower than threshold [0.0,1.0] [0.200]"
    filter_proteins: "filter proteins by a neural network [0,1] [1]"
    delete_tmp_inc: "delete temporary files incremental [0,1] [1]"
    remove_tmp_files: "Delete temporary files"
    sub_mat: "amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "number of cores used for the computation (uses all cores by default) [8]"
    compressed: "write results in compressed format [0]"
    verbosity_level_nothing: "verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info [3]"
    max_seq_len: "maximum sequence length (range 1-32768]) [65535]"
    mpi_runner: "Use MPI on compute grid with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    filter_hits: "filter hits by seq.id. and coverage"
    sort_results: "Sort results: 0: no sorting, 1: sort by evalue (Alignment) or seq.id. (Hamming) [0]"
    km_er_per_seq_scale: "scale kmer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [0.000]"
    create_lookup: "Create database lookup file (can be very large) [0]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}