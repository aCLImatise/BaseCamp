version 1.0

task MegahitCorePopcntFilterbylen {
  input {
    String cat
    String contigs_dot_fa
  }
  command <<<
    megahit_core_popcnt filterbylen \
      ~{cat} \
      ~{contigs_dot_fa}
  >>>
  parameter_meta {
    cat: ""
    contigs_dot_fa: ""
  }
}