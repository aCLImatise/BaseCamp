version 1.0

task MmseqsEasylinsearch {
  input {
    Int? comp_bias_corr
    Boolean? add_self_matches
    File? seed_sub_mat
    Int? mask
    Int? mask_lower_case
    Int? split_memory_limit
    Boolean? add_string_convert
    Int? alignment_mode
    Int? alignment_output_mode
    Boolean? wrapped_scoring
    Float? list_matches_evalue
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? alt_ali
    Float? list_matches_fraction
    Int? cov_mode
    Int? max_rejected
    Int? max_accept
    Float? score_bias
    Boolean? realign
    Float? realign_score_bias
    Int? realign_max_seqs
    Int? gap_open
    Int? gap_extend
    Int? z_drop
    Int? km_er_per_seq
    Int? km_er_per_seq_scale
    Int? pick_n_sim_km_er
    Int? result_direction
    Float? pc_a
    Float? pcb
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
    Int? search_type
    Int? format_mode
    String? format_output
    File? sub_mat
    Int? max_seq_len
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Int? mpi_runner
    Boolean? force_reuse
    Boolean? remove_tmp_files
    Int? create_lookup
    Int? chain_alignments
    Int? merge_query
    Boolean? db_output
  }
  command <<<
    mmseqs easy_linsearch \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(add_string_convert) then ("-a " +  '"' + add_string_convert + '"') else ""} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(alignment_output_mode) then ("--alignment-output-mode " +  '"' + alignment_output_mode + '"') else ""} \
      ~{if defined(wrapped_scoring) then ("--wrapped-scoring " +  '"' + wrapped_scoring + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(alt_ali) then ("--alt-ali " +  '"' + alt_ali + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(max_rejected) then ("--max-rejected " +  '"' + max_rejected + '"') else ""} \
      ~{if defined(max_accept) then ("--max-accept " +  '"' + max_accept + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(realign) then ("--realign " +  '"' + realign + '"') else ""} \
      ~{if defined(realign_score_bias) then ("--realign-score-bias " +  '"' + realign_score_bias + '"') else ""} \
      ~{if defined(realign_max_seqs) then ("--realign-max-seqs " +  '"' + realign_max_seqs + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(z_drop) then ("--zdrop " +  '"' + z_drop + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if defined(pick_n_sim_km_er) then ("--pick-n-sim-kmer " +  '"' + pick_n_sim_km_er + '"') else ""} \
      ~{if defined(result_direction) then ("--result-direction " +  '"' + result_direction + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
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
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(format_mode) then ("--format-mode " +  '"' + format_mode + '"') else ""} \
      ~{if defined(format_output) then ("--format-output " +  '"' + format_output + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if defined(force_reuse) then ("--force-reuse " +  '"' + force_reuse + '"') else ""} \
      ~{if defined(remove_tmp_files) then ("--remove-tmp-files " +  '"' + remove_tmp_files + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""} \
      ~{if defined(chain_alignments) then ("--chain-alignments " +  '"' + chain_alignments + '"') else ""} \
      ~{if defined(merge_query) then ("--merge-query " +  '"' + merge_query + '"') else ""} \
      ~{if defined(db_output) then ("--db-output " +  '"' + db_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    seed_sub_mat: "Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]"
    mask: "Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low complexity masking [1]"
    mask_lower_case: "Lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    add_string_convert: "Add backtrace string (convert to alignments with mmseqs convertalis module) [0]"
    alignment_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment [3]"
    alignment_output_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment\\n5: score only (output) cluster format [0]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start [0]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "Minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    alt_ali: "Show up to this many alternative alignments [0]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    max_rejected: "Maximum rejected alignments before alignment calculation for a query is stopped [2147483647]"
    max_accept: "Maximum accepted alignments before alignment calculation for a query is stopped [2147483647]"
    score_bias: "Score bias when computing SW alignment (in bits) [0.000]"
    realign: "Compute more conservative, shorter alignments (scores and E-values not changed) [0]"
    realign_score_bias: "Additional bias when computing realignment [-0.200]"
    realign_max_seqs: "Maximum number of results to return in realignment [2147483647]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    z_drop: "Maximal allowed difference between score values before alignment is truncated  (nucleotide alignment only) [40]"
    km_er_per_seq: "k-mers per sequence [21]"
    km_er_per_seq_scale: "Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [nucl:0.200,aa:0.000]"
    pick_n_sim_km_er: "Add N similar k-mers to search [1]"
    result_direction: "result is 0: query, 1: target centric [1]"
    pc_a: "Pseudo count admixture strength [1.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
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
    search_type: "Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated nucleotide alignment [0]"
    format_mode: "Output format: 0: BLAST-TAB, 1: SAM, 2: BLAST-TAB + query/db length, 3: Pretty HTML [0]"
    format_output: "Choose comma separated list of output columns from: query,target,evalue,gapopen,pident,fident,nident,qstart,qend,qlen\\ntstart,tend,tlen,alnlen,raw,bits,cigar,qseq,tseq,qheader,theader,qaln,taln,qframe,tframe,mismatch,qcov,tcov\\nqset,qsetid,tset,tsetid,taxid,taxname,taxlineage,qorfstart,qorfend,torfstart,torfend [query,target,fident,alnlen,mismatch,gapopen,qstart,qend,tstart,tend,evalue,bits]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    mpi_runner: "Use MPI on compute cluster with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    force_reuse: "Reuse tmp filse in tmp/latest folder ignoring parameters and version changes [0]"
    remove_tmp_files: "Delete temporary files [1]"
    create_lookup: "Create database lookup file (can be very large) [0]"
    chain_alignments: "Chain overlapping alignments [0]"
    merge_query: "Combine ORFs/split sequences to a single entry [1]"
    db_output: "Return a result DB instead of a text file [0]"
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
    File out_sub_mat = "${in_sub_mat}"
  }
}