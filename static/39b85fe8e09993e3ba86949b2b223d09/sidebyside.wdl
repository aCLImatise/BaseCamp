version 1.0

task Sidebyside {
  input {
    String widthWidth
    String sameSame
    String difDif
  }
  command <<<
    sidebyside \
      ~{if defined(widthWidth) then ("-width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(sameSame) then ("-same " +  '"' + sameSame + '"') else ""} \
      ~{if defined(difDif) then ("-dif " +  '"' + difDif + '"') else ""}
  >>>
}