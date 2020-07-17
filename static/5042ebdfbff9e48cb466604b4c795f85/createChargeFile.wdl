version 1.0

task CreateChargeFile.pl {
  input {
    Boolean? format
    Boolean? i
    Boolean? o
  }
  command <<<
    createChargeFile.pl \
      ~{true="--format" false="" format} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    format: ": format of input file or directory the version only support CPM output of ms2 format and dta directory"
    i: ""
    o: ""
  }
}