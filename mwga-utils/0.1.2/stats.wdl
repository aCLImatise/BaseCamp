version 1.0

task Stats {
  input {
    String numberNumber
    String pP
  }
  command <<<
    stats \
      ~{if defined(numberNumber) then ("- Number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}