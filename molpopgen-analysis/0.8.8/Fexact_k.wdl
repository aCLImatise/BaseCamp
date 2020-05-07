version 1.0

task FexactK {
  input {
    String? iI
    String? jJ
    String? kK
    String? lL
  }
  command <<<
    Fexact k \
      ~{iI} \
      ~{jJ} \
      ~{kK} \
      ~{lL}
  >>>
}