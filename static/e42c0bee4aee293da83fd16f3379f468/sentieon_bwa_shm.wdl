version 1.0

task SentieonBwaShm {
  input {
    Boolean dD
    Boolean lL
    File fF
    Int tT
  }
  command <<<
    sentieon-bwa shm \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}