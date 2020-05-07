version 1.0

task HR2.exe {
  input {
    String? xX
    String? cC
    String? icIc
    String? hH
    String? ihIh
    String? nN
    String? inIn
    String? oO
    String? fF
    String? naNa
    String? siSi
    String? pP
    String? sS
    String? clCl
    String? iclIcl
    String? brBr
    String? ibrIbr
    String? kK
    String? ikIk
  }
  command <<<
    HR2.exe \
      ~{xX} \
      ~{cC} \
      ~{icIc} \
      ~{hH} \
      ~{ihIh} \
      ~{nN} \
      ~{inIn} \
      ~{oO} \
      ~{fF} \
      ~{naNa} \
      ~{siSi} \
      ~{pP} \
      ~{sS} \
      ~{clCl} \
      ~{iclIcl} \
      ~{brBr} \
      ~{ibrIbr} \
      ~{kK} \
      ~{ikIk}
  >>>
}