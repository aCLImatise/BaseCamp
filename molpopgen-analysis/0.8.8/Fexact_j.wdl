version 1.0

task FexactJ {
  input {
    String? iI
    String? jJ
    String? kK
    String? lL
  }
  command <<<
    Fexact j \
      ~{iI} \
      ~{jJ} \
      ~{kK} \
      ~{lL}
  >>>
}