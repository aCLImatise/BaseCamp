version 1.0

task MosaikAligner {
  input {
    String mM
    String hsHs
    String lsLs
    String mhpMhp
    String mhrMhr
    String minMin
    String minMinP
    String mmMm
    String mmpMmp
    Boolean ncgNcg
    String bwBw
    Boolean lmLm
    Boolean kdKd
    Boolean pdPd
    String srefSref
    String sSRefn
    Boolean omiOmi
    Boolean omOm
    Boolean znZn
    String mmsMms
    String gopGop
    String gepGep
    String hHGop
  }
  command <<<
    MosaikAligner \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(hsHs) then ("-hs " +  '"' + hsHs + '"') else ""} \
      ~{if defined(lsLs) then ("-ls " +  '"' + lsLs + '"') else ""} \
      ~{if defined(mhpMhp) then ("-mhp " +  '"' + mhpMhp + '"') else ""} \
      ~{if defined(mhrMhr) then ("-mhr " +  '"' + mhrMhr + '"') else ""} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(minMinP) then ("-minp " +  '"' + minMinP + '"') else ""} \
      ~{if defined(mmMm) then ("-mm " +  '"' + mmMm + '"') else ""} \
      ~{if defined(mmpMmp) then ("-mmp " +  '"' + mmpMmp + '"') else ""} \
      ~{true="-ncg" false="" ncgNcg} \
      ~{if defined(bwBw) then ("-bw " +  '"' + bwBw + '"') else ""} \
      ~{true="-lm" false="" lmLm} \
      ~{true="-kd" false="" kdKd} \
      ~{true="-pd" false="" pdPd} \
      ~{if defined(srefSref) then ("-sref " +  '"' + srefSref + '"') else ""} \
      ~{if defined(sSRefn) then ("-srefn " +  '"' + sSRefn + '"') else ""} \
      ~{true="-omi" false="" omiOmi} \
      ~{true="-om" false="" omOm} \
      ~{true="-zn" false="" znZn} \
      ~{if defined(mmsMms) then ("-mms " +  '"' + mmsMms + '"') else ""} \
      ~{if defined(gopGop) then ("-gop " +  '"' + gopGop + '"') else ""} \
      ~{if defined(gepGep) then ("-gep " +  '"' + gepGep + '"') else ""} \
      ~{if defined(hHGop) then ("-hgop " +  '"' + hHGop + '"') else ""}
  >>>
}