version 1.0

task MimoddSnapBatch {
  input {
    Boolean sS
    File fF
  }
  command <<<
    mimodd snap-batch \
      ~{true="-s" false="" sS} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}