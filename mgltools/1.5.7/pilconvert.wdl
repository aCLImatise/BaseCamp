version 1.0

task Pilconvert.py {
  input {
    String cC
    Boolean gG
    Boolean pP
    Boolean rR
    Boolean oO
    String qQ
    Boolean fF
    String? pilPilConvert
    String? optionOption
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    pilconvert.py \
      ~{pilPilConvert} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{optionOption} \
      ~{inInFile} \
      ~{outfileOutfile}
  >>>
}