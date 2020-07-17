version 1.0

task BamAddTags {
  input {
    String? in_bam
    String? out_bam
    Boolean? tx
    String? tx_two_gx
  }
  command <<<
    bam_add_tags \
      ~{if defined(in_bam) then ("--inbam " +  '"' + in_bam + '"') else ""} \
      ~{if defined(out_bam) then ("--outbam " +  '"' + out_bam + '"') else ""} \
      ~{true="--tx" false="" tx} \
      ~{if defined(tx_two_gx) then ("--tx2gx " +  '"' + tx_two_gx + '"') else ""}
  >>>
  parameter_meta {
    in_bam: ""
    out_bam: ""
    tx: ""
    tx_two_gx: ""
  }
}