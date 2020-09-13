version 1.0

task Exonerate {
  input {
    Boolean? help
    File? query
    File? target
    String? query_type
    String? target_type
    Boolean? query_chunk_id
    Boolean? target_chunk_id
    Boolean? query_chunk_total
    Boolean? target_chunk_total
    String? verbose
    Boolean? genetic_code
    Boolean? exhaustive
    Boolean? big_seq
    Boolean? rev_comp
    Boolean? forces_can
    Int? saturate_threshold
    String? custom_server
    Int? cores
    String? fast_a_suffix
    String? model
    String? score
    String? percent
    Boolean? show_alignment
    Boolean? show_sugar
    Boolean? show_cigar
    Boolean? show_vulgar
    Boolean? show_query_gff
    Boolean? show_target_gff
    String? ryo
    Int? best_n
    Boolean? sub_opt
    Boolean? gapped_extension
    Boolean? refine
    Boolean? refine_boundary
    String? dp_memory
    Boolean? compiled
    Boolean? terminal_range_int
    Boolean? terminal_range_ext
    Boolean? join_range_int
    Boolean? join_range_ext
    Boolean? span_range_int
    Boolean? span_range_ext
    Boolean? extension_threshold
    Boolean? single_pass
    Boolean? join_filter
    File? annotation
    Boolean? soft_mask_query
    Boolean? soft_mask_target
    String? dna_sub_mat
    String? protein_sub_mat
    String? fsm_memory
    String? force_fsm
    Boolean? word_jump
    Boolean? word_ambiguity
    String? gap_open
    String? gap_extend
    String? codon_gap_open
    String? codon_gap_extend
    Int? minner
    Int? max_ner
    String? ner_open
    Int? min_intron
    Int? max_intron
    String? intron_penalty
    String? frameshift
    Boolean? use_a_atla
    Boolean? hsp_filter
    Boolean? use_word_drop_off
    Boolean? seed_repeat
    String? dna_word_len
    String? protein_word_len
    String? codon_word_len
    String? dna_hsp_drop_off
    String? protein_hsp_drop_off
    String? codon_hsp_drop_off
    String? dna_hsp_threshold
    String? protein_hsp_threshold
    String? codon_hsp_threshold
    String? dna_word_limit
    String? protein_word_limit
    String? codon_word_limit
    String? gene_seed
    Int? gene_seed_repeat
    Boolean? alignment_width
    Boolean? forward_coordinates
    String? quality
    Boolean? splice_three
    Boolean? splice_five
    Boolean? force_g_tag
  }
  command <<<
    exonerate \
      ~{if (help) then "--help" else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(query_type) then ("--querytype " +  '"' + query_type + '"') else ""} \
      ~{if defined(target_type) then ("--targettype " +  '"' + target_type + '"') else ""} \
      ~{if (query_chunk_id) then "--querychunkid" else ""} \
      ~{if (target_chunk_id) then "--targetchunkid" else ""} \
      ~{if (query_chunk_total) then "--querychunktotal" else ""} \
      ~{if (target_chunk_total) then "--targetchunktotal" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (genetic_code) then "--geneticcode" else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if (big_seq) then "--bigseq" else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if (forces_can) then "--forcescan" else ""} \
      ~{if defined(saturate_threshold) then ("--saturatethreshold " +  '"' + saturate_threshold + '"') else ""} \
      ~{if defined(custom_server) then ("--customserver " +  '"' + custom_server + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(fast_a_suffix) then ("--fastasuffix " +  '"' + fast_a_suffix + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if (show_alignment) then "--showalignment" else ""} \
      ~{if (show_sugar) then "--showsugar" else ""} \
      ~{if (show_cigar) then "--showcigar" else ""} \
      ~{if (show_vulgar) then "--showvulgar" else ""} \
      ~{if (show_query_gff) then "--showquerygff" else ""} \
      ~{if (show_target_gff) then "--showtargetgff" else ""} \
      ~{if defined(ryo) then ("--ryo " +  '"' + ryo + '"') else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if (sub_opt) then "--subopt" else ""} \
      ~{if (gapped_extension) then "--gappedextension" else ""} \
      ~{if (refine) then "--refine" else ""} \
      ~{if (refine_boundary) then "--refineboundary" else ""} \
      ~{if defined(dp_memory) then ("--dpmemory " +  '"' + dp_memory + '"') else ""} \
      ~{if (compiled) then "--compiled" else ""} \
      ~{if (terminal_range_int) then "--terminalrangeint" else ""} \
      ~{if (terminal_range_ext) then "--terminalrangeext" else ""} \
      ~{if (join_range_int) then "--joinrangeint" else ""} \
      ~{if (join_range_ext) then "--joinrangeext" else ""} \
      ~{if (span_range_int) then "--spanrangeint" else ""} \
      ~{if (span_range_ext) then "--spanrangeext" else ""} \
      ~{if (extension_threshold) then "--extensionthreshold" else ""} \
      ~{if (single_pass) then "--singlepass" else ""} \
      ~{if (join_filter) then "--joinfilter" else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (soft_mask_query) then "--softmaskquery" else ""} \
      ~{if (soft_mask_target) then "--softmasktarget" else ""} \
      ~{if defined(dna_sub_mat) then ("--dnasubmat " +  '"' + dna_sub_mat + '"') else ""} \
      ~{if defined(protein_sub_mat) then ("--proteinsubmat " +  '"' + protein_sub_mat + '"') else ""} \
      ~{if defined(fsm_memory) then ("--fsmmemory " +  '"' + fsm_memory + '"') else ""} \
      ~{if defined(force_fsm) then ("--forcefsm " +  '"' + force_fsm + '"') else ""} \
      ~{if (word_jump) then "--wordjump" else ""} \
      ~{if (word_ambiguity) then "--wordambiguity" else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(codon_gap_open) then ("--codongapopen " +  '"' + codon_gap_open + '"') else ""} \
      ~{if defined(codon_gap_extend) then ("--codongapextend " +  '"' + codon_gap_extend + '"') else ""} \
      ~{if defined(minner) then ("--minner " +  '"' + minner + '"') else ""} \
      ~{if defined(max_ner) then ("--maxner " +  '"' + max_ner + '"') else ""} \
      ~{if defined(ner_open) then ("--neropen " +  '"' + ner_open + '"') else ""} \
      ~{if defined(min_intron) then ("--minintron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(max_intron) then ("--maxintron " +  '"' + max_intron + '"') else ""} \
      ~{if defined(intron_penalty) then ("--intronpenalty " +  '"' + intron_penalty + '"') else ""} \
      ~{if defined(frameshift) then ("--frameshift " +  '"' + frameshift + '"') else ""} \
      ~{if (use_a_atla) then "--useaatla" else ""} \
      ~{if (hsp_filter) then "--hspfilter" else ""} \
      ~{if (use_word_drop_off) then "--useworddropoff" else ""} \
      ~{if (seed_repeat) then "--seedrepeat" else ""} \
      ~{if defined(dna_word_len) then ("--dnawordlen " +  '"' + dna_word_len + '"') else ""} \
      ~{if defined(protein_word_len) then ("--proteinwordlen " +  '"' + protein_word_len + '"') else ""} \
      ~{if defined(codon_word_len) then ("--codonwordlen " +  '"' + codon_word_len + '"') else ""} \
      ~{if defined(dna_hsp_drop_off) then ("--dnahspdropoff " +  '"' + dna_hsp_drop_off + '"') else ""} \
      ~{if defined(protein_hsp_drop_off) then ("--proteinhspdropoff " +  '"' + protein_hsp_drop_off + '"') else ""} \
      ~{if defined(codon_hsp_drop_off) then ("--codonhspdropoff " +  '"' + codon_hsp_drop_off + '"') else ""} \
      ~{if defined(dna_hsp_threshold) then ("--dnahspthreshold " +  '"' + dna_hsp_threshold + '"') else ""} \
      ~{if defined(protein_hsp_threshold) then ("--proteinhspthreshold " +  '"' + protein_hsp_threshold + '"') else ""} \
      ~{if defined(codon_hsp_threshold) then ("--codonhspthreshold " +  '"' + codon_hsp_threshold + '"') else ""} \
      ~{if defined(dna_word_limit) then ("--dnawordlimit " +  '"' + dna_word_limit + '"') else ""} \
      ~{if defined(protein_word_limit) then ("--proteinwordlimit " +  '"' + protein_word_limit + '"') else ""} \
      ~{if defined(codon_word_limit) then ("--codonwordlimit " +  '"' + codon_word_limit + '"') else ""} \
      ~{if defined(gene_seed) then ("--geneseed " +  '"' + gene_seed + '"') else ""} \
      ~{if defined(gene_seed_repeat) then ("--geneseedrepeat " +  '"' + gene_seed_repeat + '"') else ""} \
      ~{if (alignment_width) then "--alignmentwidth" else ""} \
      ~{if (forward_coordinates) then "--forwardcoordinates" else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if (splice_three) then "--splice3" else ""} \
      ~{if (splice_five) then "--splice5" else ""} \
      ~{if (force_g_tag) then "--forcegtag" else ""}
  >>>
  parameter_meta {
    help: ""
    query: ""
    target: ""
    query_type: ""
    target_type: ""
    query_chunk_id: ""
    target_chunk_id: ""
    query_chunk_total: ""
    target_chunk_total: ""
    verbose: ""
    genetic_code: ""
    exhaustive: ""
    big_seq: ""
    rev_comp: ""
    forces_can: "<[q|t]>"
    saturate_threshold: ""
    custom_server: ""
    cores: ""
    fast_a_suffix: ""
    model: ""
    score: ""
    percent: ""
    show_alignment: ""
    show_sugar: ""
    show_cigar: ""
    show_vulgar: ""
    show_query_gff: ""
    show_target_gff: ""
    ryo: ""
    best_n: ""
    sub_opt: ""
    gapped_extension: ""
    refine: ""
    refine_boundary: ""
    dp_memory: ""
    compiled: ""
    terminal_range_int: ""
    terminal_range_ext: ""
    join_range_int: ""
    join_range_ext: ""
    span_range_int: ""
    span_range_ext: ""
    extension_threshold: ""
    single_pass: ""
    join_filter: ""
    annotation: ""
    soft_mask_query: ""
    soft_mask_target: ""
    dna_sub_mat: ""
    protein_sub_mat: ""
    fsm_memory: ""
    force_fsm: ""
    word_jump: ""
    word_ambiguity: ""
    gap_open: ""
    gap_extend: ""
    codon_gap_open: ""
    codon_gap_extend: ""
    minner: ""
    max_ner: ""
    ner_open: ""
    min_intron: ""
    max_intron: ""
    intron_penalty: ""
    frameshift: ""
    use_a_atla: ""
    hsp_filter: ""
    use_word_drop_off: ""
    seed_repeat: ""
    dna_word_len: ""
    protein_word_len: ""
    codon_word_len: ""
    dna_hsp_drop_off: ""
    protein_hsp_drop_off: ""
    codon_hsp_drop_off: ""
    dna_hsp_threshold: ""
    protein_hsp_threshold: ""
    codon_hsp_threshold: ""
    dna_word_limit: ""
    protein_word_limit: ""
    codon_word_limit: ""
    gene_seed: ""
    gene_seed_repeat: ""
    alignment_width: ""
    forward_coordinates: ""
    quality: ""
    splice_three: ""
    splice_five: ""
    force_g_tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}