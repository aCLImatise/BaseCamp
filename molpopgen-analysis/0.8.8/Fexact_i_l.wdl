version 1.0

task FexactIL {
  input {
    String? jJ
    String? kK
    String? lL
  }
  command <<<
    Fexact i l \
      ~{jJ} \
      ~{kK} \
      ~{lL}
  >>>
}