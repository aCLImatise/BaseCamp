version 1.0

task SpadesBwaShm {
  input {
    Boolean dD
    Boolean lL
    File fF
  }
  command <<<
    spades-bwa shm \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}