version 1.0

task BwaShm {
  input {
    Boolean dD
    Boolean lL
    File fF
  }
  command <<<
    bwa shm \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}