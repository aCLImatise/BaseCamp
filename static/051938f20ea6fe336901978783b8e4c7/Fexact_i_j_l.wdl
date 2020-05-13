version 1.0

task FexactIJL {
  input {
    String? kK
    String? lL
  }
  command <<<
    Fexact i j l \
      ~{kK} \
      ~{lL}
  >>>
}