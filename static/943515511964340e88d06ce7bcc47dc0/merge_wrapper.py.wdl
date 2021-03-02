version 1.0

task MergeWrapperpy {
  input {
    String? prefix
    Float? hco
    Float? quickmerge_parameter_default
    Int? length_cut_off
    Boolean? no_nuc_mer
    Boolean? no_delta
    Boolean? stop_after_nuc_mer
    Boolean? stop_after_df
    Int? merging_length_cut_off
    Boolean? clean_only
    String hybrid_assembly_fast_a
    Int dbgt_wool_c
  }
  command <<<
    merge_wrapper_py \
      ~{hybrid_assembly_fast_a} \
      ~{dbgt_wool_c} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(hco) then ("--hco " +  '"' + hco + '"') else ""} \
      ~{if defined(quickmerge_parameter_default) then ("--c " +  '"' + quickmerge_parameter_default + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length_cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{if (no_nuc_mer) then "--no_nucmer" else ""} \
      ~{if (no_delta) then "--no_delta" else ""} \
      ~{if (stop_after_nuc_mer) then "--stop_after_nucmer" else ""} \
      ~{if (stop_after_df) then "--stop_after_df" else ""} \
      ~{if defined(merging_length_cut_off) then ("--merging_length_cutoff " +  '"' + merging_length_cut_off + '"') else ""} \
      ~{if (clean_only) then "--clean_only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "the prefix for all output files"
    hco: "the quickmerge hco parameter (default=5.0)"
    quickmerge_parameter_default: "the quickmerge c parameter (default=1.5)"
    length_cut_off: "minimum seed contig length to be merged (default=0)"
    no_nuc_mer: "skip the nucmer step"
    no_delta: "skip the nucmer and delta-filter steps"
    stop_after_nuc_mer: "do not perform the delta-filter and merger steps"
    stop_after_df: "do not perform the merger step"
    merging_length_cut_off: "set the merging length cutoff necessary for use in\\nquickmerge (default 5000)"
    clean_only: "generate safe FASTA files for merging, but do not\\nmerge\\n"
    hybrid_assembly_fast_a: "the output of a hybrid assembly program such as"
    dbgt_wool_c: "self_assembly_fasta   the output of a self assembly program such as PBcR"
  }
  output {
    File out_stdout = stdout()
  }
}