version 1.0

task CnvAnnotate.pyAnnotate {
  input {
    String outputOutput
    String? annotateAnnotate
    String? cnvCnvFile
  }
  command <<<
    cnv_annotate.py annotate \
      ~{annotateAnnotate} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{cnvCnvFile}
  >>>
}