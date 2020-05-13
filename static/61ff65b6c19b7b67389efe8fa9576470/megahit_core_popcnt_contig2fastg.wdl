version 1.0

task MegahitCorePopcntContig2fastg {
  input {
    String? contig2fastgContig2fastg
    String? kmKmErSize
    String? kKKmErSizeContigsFa
  }
  command <<<
    megahit_core_popcnt contig2fastg \
      ~{contig2fastgContig2fastg} \
      ~{kmKmErSize} \
      ~{kKKmErSizeContigsFa}
  >>>
}