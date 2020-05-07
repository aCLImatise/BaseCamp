version 1.0

task FilterGenesIn.plDbfile {
  input {
    String? nameNameFile
    String? dbfileDbfile
  }
  command <<<
    filterGenesIn.pl dbfile \
      ~{nameNameFile} \
      ~{dbfileDbfile}
  >>>
}