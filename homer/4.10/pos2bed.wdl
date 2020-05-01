version 1.0

task Pos2bed.pl {
  input {
    Boolean floatFloat
    String colorColor
  }
  command <<<
    pos2bed.pl \
      ~{true="-float" false="" floatFloat} \
      ~{if defined(colorColor) then ("-color " +  '"' + colorColor + '"') else ""}
  >>>
}