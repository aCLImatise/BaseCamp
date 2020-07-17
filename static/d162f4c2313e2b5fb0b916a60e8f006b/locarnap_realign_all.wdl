version 1.0

task LocarnapRealignAll.pl {
  input {
    String annotation_file
  }
  command <<<
    locarnap-realign-all.pl \
      ~{annotation_file}
  >>>
  parameter_meta {
    annotation_file: ""
  }
}