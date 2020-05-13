version 1.0

task MosaikBuild {
  input {
    String frFr
    String gaGa
    String oaOa
    String snSn
    String uriUri
    String fqFq
    String fr2Fr2
    String fq2Fq2
    String assignAssignQual
    String q2Q2
    String ilIl
    Boolean splitSplit
    String ilIl
    String dsDs
    String idId
    String lnLn
    String mflMfl
    Boolean puPu
    String samSam
    String stSt
    Boolean tpTp
    Boolean tsTs
  }
  command <<<
    MosaikBuild \
      ~{if defined(frFr) then ("-fr " +  '"' + frFr + '"') else ""} \
      ~{if defined(gaGa) then ("-ga " +  '"' + gaGa + '"') else ""} \
      ~{if defined(oaOa) then ("-oa " +  '"' + oaOa + '"') else ""} \
      ~{if defined(snSn) then ("-sn " +  '"' + snSn + '"') else ""} \
      ~{if defined(uriUri) then ("-uri " +  '"' + uriUri + '"') else ""} \
      ~{if defined(fqFq) then ("-fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(fr2Fr2) then ("-fr2 " +  '"' + fr2Fr2 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("-fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(assignAssignQual) then ("-assignQual " +  '"' + assignAssignQual + '"') else ""} \
      ~{if defined(q2Q2) then ("-q2 " +  '"' + q2Q2 + '"') else ""} \
      ~{if defined(ilIl) then ("-il " +  '"' + ilIl + '"') else ""} \
      ~{true="-split" false="" splitSplit} \
      ~{if defined(ilIl) then ("-il " +  '"' + ilIl + '"') else ""} \
      ~{if defined(dsDs) then ("-ds " +  '"' + dsDs + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(lnLn) then ("-ln " +  '"' + lnLn + '"') else ""} \
      ~{if defined(mflMfl) then ("-mfl " +  '"' + mflMfl + '"') else ""} \
      ~{true="-pu" false="" puPu} \
      ~{if defined(samSam) then ("-sam " +  '"' + samSam + '"') else ""} \
      ~{if defined(stSt) then ("-st " +  '"' + stSt + '"') else ""} \
      ~{true="-tp" false="" tpTp} \
      ~{true="-ts" false="" tsTs}
  >>>
}