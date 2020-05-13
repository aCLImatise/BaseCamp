version 1.0

task GsutilSignurl {
  input {
    String cC
    String dD
    String mM
    String pP
    String? keystoreKeystoreFile
    String? urlUrl
  }
  command <<<
    gsutil signurl \
      ~{keystoreKeystoreFile} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{urlUrl}
  >>>
}