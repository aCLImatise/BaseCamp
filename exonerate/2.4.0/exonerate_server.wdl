version 1.0

task Exonerateserver {
  input {
    Boolean? help
    String? port
    File? var_input
    Boolean? preload
    String? max_connections
    String? verbosity
    Boolean? soft_mask_query
    Boolean? soft_mask_target
    String? dna_sub_mat
    String? protein_sub_mat
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
  }
  command <<<
    exonerate_server \
      ~{if (help) then "--help" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if (preload) then "--preload" else ""} \
      ~{if defined(max_connections) then ("--maxconnections " +  '"' + max_connections + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (soft_mask_query) then "--softmaskquery" else ""} \
      ~{if (soft_mask_target) then "--softmasktarget" else ""} \
      ~{if defined(dna_sub_mat) then ("--dnasubmat " +  '"' + dna_sub_mat + '"') else ""} \
      ~{if defined(protein_sub_mat) then ("--proteinsubmat " +  '"' + protein_sub_mat + '"') else ""} \
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
      ~{if defined(gene_seed_repeat) then ("--geneseedrepeat " +  '"' + gene_seed_repeat + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    port: ""
    var_input: ""
    preload: ""
    max_connections: ""
    verbosity: ""
    soft_mask_query: ""
    soft_mask_target: ""
    dna_sub_mat: ""
    protein_sub_mat: ""
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
  }
  output {
    File out_stdout = stdout()
  }
}