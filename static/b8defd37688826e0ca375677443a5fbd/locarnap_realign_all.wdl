version 1.0

task LocarnapRealignAll.pl {
  input {
    String? loLoCarnapRealignAll
    String? annotationAnnotationFile
  }
  command <<<
    locarnap-realign-all.pl \
      ~{loLoCarnapRealignAll} \
      ~{annotationAnnotationFile}
  >>>
}