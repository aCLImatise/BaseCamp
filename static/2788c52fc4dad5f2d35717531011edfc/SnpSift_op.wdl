version 1.0

task SnpSiftOp {
  input {
    File fieldsFields
    String opOp
    File outfieldOutfield
    String? kewKew
    Int? maxMaxPopFreq
    File? filesFiles
  }
  command <<<
    SnpSift op \
      ~{kewKew} \
      ~{if defined(fieldsFields) then ("-fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(opOp) then ("-op " +  '"' + opOp + '"') else ""} \
      ~{if defined(outfieldOutfield) then ("-outfield " +  '"' + outfieldOutfield + '"') else ""} \
      ~{maxMaxPopFreq} \
      ~{filesFiles}
  >>>
}