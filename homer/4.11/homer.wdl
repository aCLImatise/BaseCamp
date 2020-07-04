version 1.0

task Homer {
  input {
    Boolean? prot
    File? _sequence_file
    File? _groupstat_file
    File? mer
    File? pssm_motif_file
    File? output_file_prefix
    File? seed
    Boolean? offset
    Float? filtering_cutoff_ratio
    Boolean? seq_less
    Boolean? seq_more
  }
  command <<<
    homer \
      ~{true="-prot" false="" prot} \
      ~{if defined(_sequence_file) then ("-s " +  '"' + _sequence_file + '"') else ""} \
      ~{if defined(_groupstat_file) then ("-g " +  '"' + _groupstat_file + '"') else ""} \
      ~{if defined(mer) then ("-mer " +  '"' + mer + '"') else ""} \
      ~{if defined(pssm_motif_file) then ("-m " +  '"' + pssm_motif_file + '"') else ""} \
      ~{if defined(output_file_prefix) then ("-o " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{true="-offset" false="" offset} \
      ~{if defined(filtering_cutoff_ratio) then ("-N " +  '"' + filtering_cutoff_ratio + '"') else ""} \
      ~{true="-seqless" false="" seq_less} \
      ~{true="-seqmore" false="" seq_more}
  >>>
  parameter_meta {
    prot: ": Sequence type (-dna)"
    _sequence_file: ": Sequence File"
    _groupstat_file: ": Group/Stat File"
    mer: ": Mer File"
    pssm_motif_file: ": PSSM Motif File"
    output_file_prefix: ": output file prefix"
    seed: ": seed file"
    offset: "<#> : offset of sequence from TSS (-2000)"
    filtering_cutoff_ratio: ": filtering cutoff for ratio of N's in sequence (0.9)"
    seq_less: "<#> : filter sequences shorter than #"
    seq_more: "<#> : filter sequences longer than #"
  }
}