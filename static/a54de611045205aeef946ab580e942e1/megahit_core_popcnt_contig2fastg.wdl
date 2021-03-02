version 1.0

task MegahitCorePopcntContig2fastg {
  input {
    Int contig_two_fast_g
    String km_er_size
    String k_km_er_size_dot_contigs_dot_fa
  }
  command <<<
    megahit_core_popcnt contig2fastg \
      ~{contig_two_fast_g} \
      ~{km_er_size} \
      ~{k_km_er_size_dot_contigs_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_two_fast_g: ""
    km_er_size: ""
    k_km_er_size_dot_contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}