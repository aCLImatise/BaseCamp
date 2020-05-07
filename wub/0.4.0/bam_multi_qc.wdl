version 1.0

task BamMultiQc.py {
  input {
    String rR
    Boolean xX
    String? inputInputPickles
  }
  command <<<
    bam_multi_qc.py \
      ~{inputInputPickles} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-x" false="" xX}
  >>>
}