version 1.0

task MergeWrapper.py {
  input {
    String? prefix
    String? hco
    String? quickmerge_c_parameter
    Int? length_cut_off
    Boolean? no_nuc_mer
    Boolean? no_delta
    Boolean? stop_after_nuc_mer
    Boolean? stop_after_df
    String? merging_length_cut_off
    Boolean? clean_only
    String hybrid_assembly_fast_a
    String self_assembly_fast_a
  }
  command <<<
    merge_wrapper.py \
      ~{hybrid_assembly_fast_a} \
      ~{self_assembly_fast_a} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(hco) then ("--hco " +  '"' + hco + '"') else ""} \
      ~{if defined(quickmerge_c_parameter) then ("--c " +  '"' + quickmerge_c_parameter + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length_cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{true="--no_nucmer" false="" no_nuc_mer} \
      ~{true="--no_delta" false="" no_delta} \
      ~{true="--stop_after_nucmer" false="" stop_after_nuc_mer} \
      ~{true="--stop_after_df" false="" stop_after_df} \
      ~{if defined(merging_length_cut_off) then ("--merging_length_cutoff " +  '"' + merging_length_cut_off + '"') else ""} \
      ~{true="--clean_only" false="" clean_only}
  >>>
  parameter_meta {
    prefix: "the prefix for all output files"
    hco: "the quickmerge hco parameter (default=5.0)"
    quickmerge_c_parameter: "the quickmerge c parameter (default=1.5)"
    length_cut_off: "minimum seed contig length to be merged (default=0)"
    no_nuc_mer: "skip the nucmer step"
    no_delta: "skip the nucmer and delta-filter steps"
    stop_after_nuc_mer: "do not perform the delta-filter and merger steps"
    stop_after_df: "do not perform the merger step"
    merging_length_cut_off: "set the merging length cutoff necessary for use in quickmerge (default 5000)"
    clean_only: "generate safe FASTA files for merging, but do not merge"
    hybrid_assembly_fast_a: "the output of a hybrid assembly program such as DBG2OLC"
    self_assembly_fast_a: "the output of a self assembly program such as PBcR"
  }
}