version 1.0

task GetRna {
  input {
    Boolean cdsCdsUpperAll
    String includeInclude
    String translateTranslate
    String? databaseDatabase
    String? accAccFile
    String? outOutFa
  }
  command <<<
    getRna \
      ~{databaseDatabase} \
      ~{true="-cdsUpperAll" false="" cdsCdsUpperAll} \
      ~{if defined(includeInclude) then ("- include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(translateTranslate) then ("- translate " +  '"' + translateTranslate + '"') else ""} \
      ~{accAccFile} \
      ~{outOutFa}
  >>>
}