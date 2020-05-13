version 1.0

task Pp2dot {
  input {
    String colorsColors
    String colorsColors2
    Boolean manMan
  }
  command <<<
    pp2dot \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(colorsColors2) then ("--colors2 " +  '"' + colorsColors2 + '"') else ""} \
      ~{true="--man" false="" manMan}
  >>>
}