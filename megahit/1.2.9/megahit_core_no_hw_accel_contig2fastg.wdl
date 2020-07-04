version 1.0

task MegahitCoreNoHwAccelContig2fastg {
  input {
    String contig_two_fast_g
    String km_er_size
    String k_km_er_size_dot_contigs_dot_fa
  }
  command <<<
    megahit_core_no_hw_accel contig2fastg \
      ~{contig_two_fast_g} \
      ~{km_er_size} \
      ~{k_km_er_size_dot_contigs_dot_fa}
  >>>
  parameter_meta {
    contig_two_fast_g: ""
    km_er_size: ""
    k_km_er_size_dot_contigs_dot_fa: ""
  }
}