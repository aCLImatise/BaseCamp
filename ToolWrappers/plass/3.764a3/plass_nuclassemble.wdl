version 1.0

task PlassNuclassemble {
  input {
    Int? alph_size
    Int? mask
    Int? mask_lower_case
    Int? kmer_size_set
    Int? split_memory_limit
    Boolean? add_self_matches
    Float? min_seq_id
    Int? cov_mode
    Float? list_matches_fraction
    Float? extend_sequences_is
    Boolean? add_string_convert
    Int? min_aln_len
    Int? seq_id_mode
    Int? km_er_per_seq
    Boolean? adjust_km_er_len
    Int? hash_shift
    Int? include_only_extendable
    Int? ignore_multi_km_er
    Int? num_iterations
    Int? cycle_check
    Int? min_contig_len
    Float? clust_thr
    Boolean? remove_tmp_files
    Int? delete_tmp_inc
    Int? re_score_mode
    Boolean? wrapped_scoring
    Int? chop_cycle
    Int? mpi_runner
    File? sub_mat
    Int? max_seq_len
    Int? threads
    Int? compressed
    Int? verbosity_level_nothing
    Int? db_load_mode
    Float? km_er_per_seq_scale
    Boolean? filter_hits
    Int? sort_results
  }
  command <<<
    plass nuclassemble \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(kmer_size_set) then ("-k " +  '"' + kmer_size_set + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(extend_sequences_is) then ("-e " +  '"' + extend_sequences_is + '"') else ""} \
      ~{if (add_string_convert) then "-a" else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if (adjust_km_er_len) then "--adjust-kmer-len" else ""} \
      ~{if defined(hash_shift) then ("--hash-shift " +  '"' + hash_shift + '"') else ""} \
      ~{if defined(include_only_extendable) then ("--include-only-extendable " +  '"' + include_only_extendable + '"') else ""} \
      ~{if defined(ignore_multi_km_er) then ("--ignore-multi-kmer " +  '"' + ignore_multi_km_er + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(cycle_check) then ("--cycle-check " +  '"' + cycle_check + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min-contig-len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(clust_thr) then ("--clust-thr " +  '"' + clust_thr + '"') else ""} \
      ~{if (remove_tmp_files) then "--remove-tmp-files" else ""} \
      ~{if defined(delete_tmp_inc) then ("--delete-tmp-inc " +  '"' + delete_tmp_inc + '"') else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if (wrapped_scoring) then "--wrapped-scoring" else ""} \
      ~{if defined(chop_cycle) then ("--chop-cycle " +  '"' + chop_cycle + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_nothing) then ("-v " +  '"' + verbosity_level_nothing + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if (filter_hits) then "--filter-hits" else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alph_size: "alphabet size (range 2-21) [5]"
    mask: "mask sequences in k-mer stage 0: w/o low complexity masking, 1: with low complexity masking [0]"
    mask_lower_case: "lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    kmer_size_set: "k-mer size in the range (0: set automatically to optimum) [22]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available system memory. [0]"
    add_self_matches: "artificially add entries of queries with themselves (for clustering)"
    min_seq_id: "Overlap sequence identity threshold [0.0, 1.0] [0.970]"
    cov_mode: "0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs to be at least x% of query length, 4: query seq. length needs to be at least x% of target length 5: short seq. needs to be at least x% of the other seq. length [0]"
    list_matches_fraction: "list matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    extend_sequences_is: "Extend sequences if the E-value is below [0.0, inf] [0.000]"
    add_string_convert: "add backtrace string (convert to alignments with mmseqs convertalis utility)"
    min_aln_len: "minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    km_er_per_seq: "kmer per sequence [60]"
    adjust_km_er_len: "adjust k-mer length based on specificity (only for nucleotides)"
    hash_shift: "Shift k-mer hash [5]"
    include_only_extendable: "Include only extendable [1, set to 0 to disable]"
    ignore_multi_km_er: "Skip kmers occuring multiple times (>=2) [1, set to 0 to disable]"
    num_iterations: "Number of assembly iterations [1, inf] [12]"
    cycle_check: "Check for circular sequences (avoid infinite extension of circular or long repeated regions)  [1, set to 0 to disable]"
    min_contig_len: "Minimum length of assembled contig to output [1000]"
    clust_thr: "Threshold to reduce redundancy in assembly by applying the linclust algorithm (clustering threshold) (range 0.0-1.0) [0.970]"
    remove_tmp_files: "Delete temporary files"
    delete_tmp_inc: "delete temporary files incremental [0,1] [1]"
    re_score_mode: "Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only), 2: local alignment, 3: global alignment or 4: longest alignment fullfilling window quality criterion [3]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start"
    chop_cycle: "Remove superfluous part of circular fragments [1, set to 0 to disable]"
    mpi_runner: "Use MPI on compute grid with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    sub_mat: "amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "maximum sequence length (range 1-32768]) [65535]"
    threads: "number of cores used for the computation (uses all cores by default) [8]"
    compressed: "write results in compressed format [0]"
    verbosity_level_nothing: "verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info [3]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    km_er_per_seq_scale: "scale kmer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [0.100]"
    filter_hits: "filter hits by seq.id. and coverage"
    sort_results: "Sort results: 0: no sorting, 1: sort by evalue (Alignment) or seq.id. (Hamming) [0]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}