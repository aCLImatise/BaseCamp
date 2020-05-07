version 1.0

task FexactL {
  input {
    String? iI
    String? jJ
    String? kK
    String? lL
  }
  command <<<
    Fexact l \
      ~{iI} \
      ~{jJ} \
      ~{kK} \
      ~{lL}
  >>>
}