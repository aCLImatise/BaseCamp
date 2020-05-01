version 1.0

task BamQC.py {
  input {
    String bamBam
    Int maxMaxL
  }
  command <<<
    bamQC.py \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(maxMaxL) then ("-maxl " +  '"' + maxMaxL + '"') else ""}
  >>>
}