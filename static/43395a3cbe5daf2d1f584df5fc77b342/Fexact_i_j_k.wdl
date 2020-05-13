version 1.0

task FexactIJK {
  input {
    String? lL
  }
  command <<<
    Fexact i j k \
      ~{lL}
  >>>
}