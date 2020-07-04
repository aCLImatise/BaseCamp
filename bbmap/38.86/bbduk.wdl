version 1.0

task Bbduk.sh {
  input {
    String km_ers_dot
    String discarded_dot
  }
  command <<<
    bbduk.sh \
      ~{km_ers_dot} \
      ~{discarded_dot}
  >>>
  parameter_meta {
    km_ers_dot: "1 means use all, 2 means use every other kmer, etc."
    discarded_dot: "Pairs will be discarded if both are shorter."
  }
}