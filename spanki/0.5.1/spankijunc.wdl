version 1.0

task Spankijunc {
  input {
    String iI
    String gG
    String mM
    String fF
    String filterFilter
    String oO
    String rR
    String oOHang
  }
  command <<<
    spankijunc \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oOHang) then ("-ohang " +  '"' + oOHang + '"') else ""}
  >>>
}