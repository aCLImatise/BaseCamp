version 1.0

task IgdiscoverDbdiff {
  input {
    String colorColor
    String? aA
    String? bB
  }
  command <<<
    igdiscover dbdiff \
      ~{aA} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{bB}
  >>>
}