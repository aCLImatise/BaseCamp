version 1.0

task AddErrors.py {
  input {
    String nN
    String tT
    String? inputInputFastA
    String? outputOutputFastA
  }
  command <<<
    add_errors.py \
      ~{inputInputFastA} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{outputOutputFastA}
  >>>
}