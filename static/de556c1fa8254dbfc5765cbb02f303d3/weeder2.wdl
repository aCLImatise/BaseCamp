version 1.0

task Weeder2 {
  input {
    String fF
  }
  command <<<
    weeder2 \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}