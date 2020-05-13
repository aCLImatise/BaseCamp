version 1.0

task GenePredToFakePsl {
  input {
    String qQSizes
    String? dbDb
    File? fileFileTbl
    String? pslPslOut
    String? cdsCdsOut
  }
  command <<<
    genePredToFakePsl \
      ~{dbDb} \
      ~{if defined(qQSizes) then ("-qSizes " +  '"' + qQSizes + '"') else ""} \
      ~{fileFileTbl} \
      ~{pslPslOut} \
      ~{cdsCdsOut}
  >>>
}