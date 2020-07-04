version 1.0

task BpSeqfeatureLoad.pl {
  input {
    String gff_or_fast_a_file_one
  }
  command <<<
    bp_seqfeature_load.pl \
      ~{gff_or_fast_a_file_one}
  >>>
  parameter_meta {
    gff_or_fast_a_file_one: ""
  }
}