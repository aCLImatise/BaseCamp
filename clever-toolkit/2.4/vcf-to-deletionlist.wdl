version 1.0

task VcfToDeletionlist {
  input {
    Int mM
    Boolean iI
    Boolean gG
  }
  command <<<
    vcf-to-deletionlist \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-g" false="" gG}
  >>>
}