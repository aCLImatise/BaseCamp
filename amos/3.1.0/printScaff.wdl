version 1.0

task PrintScaff {
  input {
    String lL
    String fF
  }
  command <<<
    printScaff \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}