version 1.0

task Colorinterpolate {
  input {
    String startStart
  }
  command <<<
    colorinterpolate \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""}
  >>>
}