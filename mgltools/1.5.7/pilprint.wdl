version 1.0

task Pilprint.py {
  input {
    Boolean cC
    Boolean pP
    String pP
    String? pilPilPrint
    File? filesFiles
  }
  command <<<
    pilprint.py \
      ~{pilPilPrint} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{filesFiles}
  >>>
}