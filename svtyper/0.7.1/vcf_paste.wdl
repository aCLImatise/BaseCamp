version 1.0

task VcfPaste.py {
  input {
    String mM
    Boolean qQ
    String fF
  }
  command <<<
    vcf_paste.py \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}