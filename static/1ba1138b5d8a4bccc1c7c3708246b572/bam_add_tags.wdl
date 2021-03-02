version 1.0

task BamAddTags {
  input {
    File? tx_two_gx
    Boolean? tx
    String? out_bam
    String? in_bam
  }
  command <<<
    bam_add_tags \
      ~{if defined(tx_two_gx) then ("--tx2gx " +  '"' + tx_two_gx + '"') else ""} \
      ~{if (tx) then "--tx" else ""} \
      ~{if defined(out_bam) then ("--outbam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(in_bam) then ("--inbam " +  '"' + in_bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tx_two_gx: ""
    tx: ""
    out_bam: ""
    in_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}