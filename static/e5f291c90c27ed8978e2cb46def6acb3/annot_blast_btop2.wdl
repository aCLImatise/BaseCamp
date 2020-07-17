version 1.0

task AnnotBlastBtop2.pl {
  input {
    String? help
    Boolean? ann_script
    Boolean? q_ann_script
    Boolean? query_file
    Boolean? out_fields
    Boolean? raw_score
  }
  command <<<
    annot_blast_btop2.pl \
      ~{if defined(help) then ("--help " +  '"' + help + '"') else ""} \
      ~{true="--ann_script" false="" ann_script} \
      ~{true="--q_ann_script" false="" q_ann_script} \
      ~{true="--query_file" false="" query_file} \
      ~{true="--out_fields" false="" out_fields} \
      ~{true="--raw_score" false="" raw_score}
  >>>
  parameter_meta {
    help: "description"
    ann_script: "-- annotation script returning site/domain locations for subject sequences -- same as --script"
    q_ann_script: "-- annotation script for query sequences -- same as --q_script"
    query_file: "-- fasta query sequence -- same as --query, --query_lib (can contain multiple sequences for multi-sequence search)"
    out_fields: "-- blast tabular fields shown before domain information"
    raw_score: "-- add the raw_score used to normalized domain scores to tabular output (raw_scores are only calculated for domains)"
  }
}