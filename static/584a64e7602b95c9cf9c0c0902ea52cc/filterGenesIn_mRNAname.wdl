version 1.0

task FilterGenesInMRNAname.plDbfile {
  input {
    String? gtfGtfFile
    String? dbfileDbfile
  }
  command <<<
    filterGenesIn_mRNAname.pl dbfile \
      ~{gtfGtfFile} \
      ~{dbfileDbfile}
  >>>
}