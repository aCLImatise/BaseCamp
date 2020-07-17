version 1.0

task Pynast {
  input {
    String? template_fp
    String? input_fp
    Boolean? verbose
    Int? min_pct_id
    Int? min_len
    String? pairwise_alignment_method
    String? fast_a_out_fp
    String? log_fp
    String? failure_fp
    String? temp_dir
    Int? max_e_value
    String? blast_db
  }
  command <<<
    pynast \
      ~{if defined(template_fp) then ("--template_fp " +  '"' + template_fp + '"') else ""} \
      ~{if defined(input_fp) then ("--input_fp " +  '"' + input_fp + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(min_pct_id) then ("--min_pct_id " +  '"' + min_pct_id + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(pairwise_alignment_method) then ("--pairwise_alignment_method " +  '"' + pairwise_alignment_method + '"') else ""} \
      ~{if defined(fast_a_out_fp) then ("--fasta_out_fp " +  '"' + fast_a_out_fp + '"') else ""} \
      ~{if defined(log_fp) then ("--log_fp " +  '"' + log_fp + '"') else ""} \
      ~{if defined(failure_fp) then ("--failure_fp " +  '"' + failure_fp + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(max_e_value) then ("--max_e_value " +  '"' + max_e_value + '"') else ""} \
      ~{if defined(blast_db) then ("--blast_db " +  '"' + blast_db + '"') else ""}
  >>>
  parameter_meta {
    template_fp: "path to template alignment file [REQUIRED]"
    input_fp: "path to input fasta file [REQUIRED]"
    verbose: "Print status and other information during execution [default: False]"
    min_pct_id: "minimum percent sequence  identity to consider a sequence a match [default: 75.0]"
    min_len: "minimum sequence length to include in NAST alignment [default: 1000]"
    pairwise_alignment_method: "method for performing pairwise alignment [default: uclust]"
    fast_a_out_fp: "path to store resulting alignment file [default: derived from input filepath]"
    log_fp: "path to store log file [default: derived from input filepath]"
    failure_fp: "path to store file of seqs which fail to align [default: derived from input filepath]"
    temp_dir: "path to store any temp files that are created [default: /tmp]"
    max_e_value: "Deprecated. Will be removed in PyNAST 1.3"
    blast_db: "Deprecated. Will be removed in PyNAST 1.3"
  }
}