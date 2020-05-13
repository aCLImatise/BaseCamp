version 1.0

task FilterGenes.plDbfile {
  input {
    String? nameNameFile
    String? dbfileDbfile
  }
  command <<<
    filterGenes.pl dbfile \
      ~{nameNameFile} \
      ~{dbfileDbfile}
  >>>
}