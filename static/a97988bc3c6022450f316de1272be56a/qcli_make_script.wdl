version 1.0

task QcliMakeScript {
  input {
    String outputOutputFp
  }
  command <<<
    qcli_make_script \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}