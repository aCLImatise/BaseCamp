version 1.0

task FexactIK {
  input {
    String? jJ
    String? kK
    String? lL
  }
  command <<<
    Fexact i k \
      ~{jJ} \
      ~{kK} \
      ~{lL}
  >>>
}