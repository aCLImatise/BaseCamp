version 1.0

task ClusteringRepseqs {
  input {
    Boolean? use_cluster_id
    Boolean? invert
    File? id_mapping
    Boolean? longest
    Directory? out
    File? pref_seq_ids
    Boolean? one_rep_per_otu
    String squared
  }
  command <<<
    Clustering rep_seqs \
      ~{squared} \
      ~{if (use_cluster_id) then "--use-cluster-id" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(pref_seq_ids) then ("--pref-seqids " +  '"' + pref_seq_ids + '"') else ""} \
      ~{if (one_rep_per_otu) then "--one-rep-per-otu" else ""}
  >>>
  parameter_meta {
    use_cluster_id: "Use the cluster id as the seq id."
    invert: "Invert preferential sequence id (give preference\\nto seqids not in the file)"
    id_mapping: "Id mapping used when clustering [required if\\nusing dereplicated seq file]"
    longest: "Select longest sequences instead of least dist"
    out: "Output directory (default=.)"
    pref_seq_ids: "Preferential sequence id file"
    one_rep_per_otu: "One representative sequence for each OTU.\\nDefault is false. The default returns one rep\\nseq for each sample at each OTU"
    squared: "-m,--mask-seq <arg>      Mask sequence id"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}