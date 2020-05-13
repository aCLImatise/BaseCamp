version 1.0

task MegahitCoreNoHwAccelContig2fastg {
  input {
    String? contig2fastgContig2fastg
    String? kmKmErSize
    String? kKKmErSizeContigsFa
  }
  command <<<
    megahit_core_no_hw_accel contig2fastg \
      ~{contig2fastgContig2fastg} \
      ~{kmKmErSize} \
      ~{kKKmErSizeContigsFa}
  >>>
}