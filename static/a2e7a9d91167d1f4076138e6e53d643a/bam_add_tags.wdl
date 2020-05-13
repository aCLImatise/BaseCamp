version 1.0

task BamAddTags {
  input {
    String inInBam
    String outOutBam
    Boolean txTx
    String tx2gxTx2gx
  }
  command <<<
    bam_add_tags \
      ~{if defined(inInBam) then ("--inbam " +  '"' + inInBam + '"') else ""} \
      ~{if defined(outOutBam) then ("--outbam " +  '"' + outOutBam + '"') else ""} \
      ~{true="--tx" false="" txTx} \
      ~{if defined(tx2gxTx2gx) then ("--tx2gx " +  '"' + tx2gxTx2gx + '"') else ""}
  >>>
}