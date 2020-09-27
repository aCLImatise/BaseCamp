version 1.0

task ClusteringDerep {
  input {
    Boolean? aligned
    Boolean? formatted
    Boolean? keep_common_gaps
    String? model_only
    File? out
    File? qual_out
    Boolean? sorted
    Boolean? unaligned
    String de_replicator
    String id_mapping_out
    String sample_mapping_out
  }
  command <<<
    Clustering derep \
      ~{de_replicator} \
      ~{id_mapping_out} \
      ~{sample_mapping_out} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (formatted) then "--formatted" else ""} \
      ~{if (keep_common_gaps) then "--keep-common-gaps" else ""} \
      ~{if defined(model_only) then ("--model-only " +  '"' + model_only + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(qual_out) then ("--qual-out " +  '"' + qual_out + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if (unaligned) then "--unaligned" else ""}
  >>>
  parameter_meta {
    aligned: "Dereplicate aligned sequences"
    formatted: "Dereplicate formated (uppercase/- = comparable,\\nlowercase/. = non-comparable) aligned sequences"
    keep_common_gaps: "Don't remove common gaps in output sequences"
    model_only: "Dereplicate aligned sequences using mask sequence"
    out: "Write sequences to this file"
    qual_out: "Write quality sequences to this file"
    sorted: "Sort sequence by number of members represented"
    unaligned: "Dereplicate unaligned sequences"
    de_replicator: ""
    id_mapping_out: ""
    sample_mapping_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}