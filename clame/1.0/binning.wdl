version 1.0

task Binning {
  input {
    String dmDm
    Boolean iI
    Boolean nN
    String ntNt
    String luLu
    String ldLd
    String rtRt
    String sizeSizeBin
    String toToL
  }
  command <<<
    binning \
      ~{if defined(dmDm) then ("-dM " +  '"' + dmDm + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-n" false="" nN} \
      ~{if defined(ntNt) then ("-nt " +  '"' + ntNt + '"') else ""} \
      ~{if defined(luLu) then ("-lu " +  '"' + luLu + '"') else ""} \
      ~{if defined(ldLd) then ("-ld " +  '"' + ldLd + '"') else ""} \
      ~{if defined(rtRt) then ("-rt " +  '"' + rtRt + '"') else ""} \
      ~{if defined(sizeSizeBin) then ("-sizeBin " +  '"' + sizeSizeBin + '"') else ""} \
      ~{if defined(toToL) then ("-tol " +  '"' + toToL + '"') else ""}
  >>>
}