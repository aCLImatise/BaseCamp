version 1.0

task FastaptamerSearch {
  input {
    String? rR
    String? yY
    String? wW
    String? sS
    String? mM
    String? kK
    String? bB
    String? dD
    String? hH
    String? vV
    String? nN
  }
  command <<<
    fastaptamer_search \
      ~{rR} \
      ~{yY} \
      ~{wW} \
      ~{sS} \
      ~{mM} \
      ~{kK} \
      ~{bB} \
      ~{dD} \
      ~{hH} \
      ~{vV} \
      ~{nN}
  >>>
}