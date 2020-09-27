version 1.0

task MmseqsCreateindex {
  input {
    Boolean? kmer_size_range
    Boolean? alph_size
    Boolean? mask
    Boolean? spaced_km_er_mode
    Boolean? sensitivity_faster_fast
    Boolean? k_score
    Boolean? split
    Boolean? split_memory_limit
    Boolean? include_headers
    Boolean? min_length
    Boolean? max_length
    Boolean? max_gaps
    Boolean? contig_start_mode
    Boolean? contig_end_mode
    Boolean? orf_start_mode
    Boolean? forward_frames
    Boolean? reverse_frames
    Boolean? translation_table
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? add_orf_stop
    File? sub_mat
    Boolean? max_seqs
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createindex \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (spaced_km_er_mode) then "--spaced-kmer-mode" else ""} \
      ~{if (sensitivity_faster_fast) then "-s" else ""} \
      ~{if (k_score) then "--k-score" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (include_headers) then "--include-headers" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (max_gaps) then "--max-gaps" else ""} \
      ~{if (contig_start_mode) then "--contig-start-mode" else ""} \
      ~{if (contig_end_mode) then "--contig-end-mode" else ""} \
      ~{if (orf_start_mode) then "--orf-start-mode" else ""} \
      ~{if (forward_frames) then "--forward-frames" else ""} \
      ~{if (reverse_frames) then "--reverse-frames" else ""} \
      ~{if (translation_table) then "--translation-table" else ""} \
      ~{if (use_all_table_starts) then "--use-all-table-starts" else ""} \
      ~{if (id_offset) then "--id-offset" else ""} \
      ~{if (add_orf_stop) then "--add-orf-stop" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (max_seqs) then "--max-seqs" else ""} \
      ~{if (max_seq_len) then "--max-seq-len" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    alph_size: "21              alphabet size [2,21]"
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking, 2: add both masked and unmasked sequences to index"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers"
    sensitivity_faster_fast: "7.500           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    k_score: "0               k-mer threshold for generating similar-k-mer lists"
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    include_headers: "false           Include the header index into the index"
    min_length: "30              minimum codon number in open reading frames"
    max_length: "98202           maximum codon number in open reading frames"
    max_gaps: "2147483647      maximum number of codons with gaps or unknown residues before an open reading frame is rejected"
    contig_start_mode: "2               Contig start can be 0: incomplete, 1: complete, 2: both"
    contig_end_mode: "2               Contig end can be 0: incomplete, 1: complete, 2: both"
    orf_start_mode: "0               Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle)"
    forward_frames: "1,2,3           comma-seperated list of ORF frames on the forward strand to be extracted"
    reverse_frames: "1,2,3           comma-seperated list of ORF frames on the reverse strand to be extracted"
    translation_table: "1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA"
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value"
    add_orf_stop: "false           add * at complete start and end"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}