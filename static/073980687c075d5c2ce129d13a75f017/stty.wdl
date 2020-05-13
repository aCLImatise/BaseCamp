version 1.0

task Stty {
  input {
    Boolean allAll
    Boolean saveSave
    String fileFile
    Boolean cCBreak
    Boolean cookedCooked
    Boolean evenEvenP
    Boolean litLitOut
    Boolean nlNl
    String pass8Pass8
    Boolean rawRaw
    String? nN
    String? cCBreak
    String? cookedCooked
    String? crtCrt
    String? decDec
    String? ekEk
    String? evenEvenP
    String? litLitOut
    String? nlNl
    String? rawRaw
    String? saneSane
  }
  command <<<
    stty \
      ~{nN} \
      ~{cCBreak} \
      ~{ekEk} \
      ~{litLitOut} \
      ~{rawRaw} \
      ~{true="--all" false="" allAll} \
      ~{true="--save" false="" saveSave} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="-cbreak" false="" cCBreak} \
      ~{true="-cooked" false="" cookedCooked} \
      ~{true="-evenp" false="" evenEvenP} \
      ~{true="-litout" false="" litLitOut} \
      ~{true="-nl" false="" nlNl} \
      ~{if defined(pass8Pass8) then ("-pass8 " +  '"' + pass8Pass8 + '"') else ""} \
      ~{true="-raw" false="" rawRaw} \
      ~{cookedCooked} \
      ~{evenEvenP} \
      ~{nlNl} \
      ~{saneSane} \
      ~{crtCrt} \
      ~{decDec}
  >>>
}