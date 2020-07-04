version 1.0

task Colorinterpolate {
  input {
    String? start
  }
  command <<<
    colorinterpolate \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""}
  >>>
  parameter_meta {
    start: ",y1,z1 -end x2,y2,z2 -steps STEPS"
  }
}