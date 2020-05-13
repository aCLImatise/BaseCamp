version 1.0

task PhraseSearch {
  input {
    String? ecEc
    String? ecEc
    String? nN
    String? oO
    String? kK
    String? zZ
    String? tT
    String? cC
    String? saSa
    String? prPr
    String? paPa
    String? jcJc
    String? mpMp
    String? uU
    String? udUd
    String? dD
    String? jgJg
    String? teTe
    String? yY
    String? gG
    String? mdMd
    String? xX
    String? lL
    String? egEg
    String? iI
    String? hH
    String? rgRg
    String? qQ
  }
  command <<<
    phrase-search \
      ~{ecEc} \
      ~{oO} \
      ~{tT} \
      ~{mpMp} \
      ~{uU} \
      ~{mdMd} \
      ~{egEg} \
      ~{ecEc} \
      ~{kK} \
      ~{cC} \
      ~{udUd} \
      ~{xX} \
      ~{iI} \
      ~{nN} \
      ~{zZ} \
      ~{saSa} \
      ~{dD} \
      ~{lL} \
      ~{hH} \
      ~{prPr} \
      ~{jgJg} \
      ~{rgRg} \
      ~{paPa} \
      ~{teTe} \
      ~{qQ} \
      ~{jcJc} \
      ~{yY} \
      ~{gG}
  >>>
}