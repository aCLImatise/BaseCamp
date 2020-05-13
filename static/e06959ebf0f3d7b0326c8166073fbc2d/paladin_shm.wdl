version 1.0

task PaladinShm {
  input {
    Boolean dD
    Boolean lL
    File fF
  }
  command <<<
    paladin shm \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}