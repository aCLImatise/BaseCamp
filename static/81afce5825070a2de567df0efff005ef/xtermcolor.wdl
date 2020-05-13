version 1.0

task Xtermcolor {
  input {
    String colorColor
    String compatCompat
  }
  command <<<
    xtermcolor \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(compatCompat) then ("--compat " +  '"' + compatCompat + '"') else ""}
  >>>
}