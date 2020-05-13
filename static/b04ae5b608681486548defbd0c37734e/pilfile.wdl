version 1.0

task Pilfile.py {
  input {
    Boolean fF
    Boolean iI
    Boolean vV
    Boolean qQ
    String? pilPilFile
    String? optionOption
    File? filesFiles
  }
  command <<<
    pilfile.py \
      ~{pilPilFile} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{optionOption} \
      ~{filesFiles}
  >>>
}