version 1.0

task MmseqsCreatelinindex {
  input {
    File? seed_sub_mat
    Int? kmer_length_set
    Int? split_memory_limit
    Int? alph_size
    Int? mask
    Int? mask_lower_case
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    Float? min_seq_id
    Int? hash_shift
    Int? km_er_per_seq
    Int? km_er_per_seq_scale
    Boolean? adjust_km_er_len
    Boolean? ignore_multi_km_er
    Int? check_compatible
    Int? search_type
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
    Boolean? add_orf_stop
    Int? max_seq_len
    Int? verbosity_level_errors
    Int? threads
    Int? compressed
    Boolean? remove_tmp_files
    Int? create_lookup
  }
  command <<<
    mmseqs createlinindex \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(hash_shift) then ("--hash-shift " +  '"' + hash_shift + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if defined(adjust_km_er_len) then ("--adjust-kmer-len " +  '"' + adjust_km_er_len + '"') else ""} \
      ~{if defined(ignore_multi_km_er) then ("--ignore-multi-kmer " +  '"' + ignore_multi_km_er + '"') else ""} \
      ~{if defined(check_compatible) then ("--check-compatible " +  '"' + check_compatible + '"') else ""} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
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
      ~{if defined(use_all_table_starts) then ("--use-all-table-starts " +  '"' + use_all_table_starts + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(add_orf_stop) then ("--add-orf-stop " +  '"' + add_orf_stop + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(remove_tmp_files) then ("--remove-tmp-files " +  '"' + remove_tmp_files + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    seed_sub_mat: "Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:blosum62.out]"
    kmer_length_set: "k-mer length (0: automatically set to optimum) [0]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    alph_size: "Alphabet size (range 2-21) [nucl:5,aa:21]"
    mask: "Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low complexity masking [0]"
    mask_lower_case: "Lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [0]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    hash_shift: "Shift k-mer hash initialization [67]"
    km_er_per_seq: "k-mers per sequence [21]"
    km_er_per_seq_scale: "Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [nucl:0.200,aa:0.000]"
    adjust_km_er_len: "Adjust k-mer length based on specificity (only for nucleotides) [0]"
    ignore_multi_km_er: "Skip k-mers occurring multiple times (>=2) [0]"
    check_compatible: "0: Always recreate index, 1: Check if recreating index is needed, 2: Fail if index is incompatible [0]"
    search_type: "Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated nucleotide alignment [0]"
    min_length: "Minimum codon number in open reading frames [30]"
    max_length: "Maximum codon number in open reading frames [32734]"
    max_gaps: "Maximum number of codons with gaps or unknown residues before an open reading frame is rejected [2147483647]"
    contig_start_mode: "Contig start can be 0: incomplete, 1: complete, 2: both [2]"
    contig_end_mode: "Contig end can be 0: incomplete, 1: complete, 2: both [2]"
    orf_start_mode: "Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle) [1]"
    forward_frames: "Comma-separated list of frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "Comma-separated list of frames on the reverse strand to be extracted [1,2,3]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    translate: "Translate ORF to amino acid [0]"
    use_all_table_starts: "Use all alternatives for a start codon in the genetic table, if false - only ATG (AUG) [0]"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    add_orf_stop: "Add stop codon '*' at complete start and end [0]"
    max_seq_len: "Maximum sequence length [65535]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    remove_tmp_files: "Delete temporary files [0]"
    create_lookup: "Create database lookup file (can be very large) [0]"
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
  }
}