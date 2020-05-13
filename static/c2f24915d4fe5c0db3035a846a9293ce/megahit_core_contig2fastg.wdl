version 1.0

task MegahitCoreContig2fastg {
  input {
    String? contig2fastgContig2fastg
    String? kmKmErSize
    String? kKKmErSizeContigsFa
  }
  command <<<
    megahit_core contig2fastg \
      ~{contig2fastgContig2fastg} \
      ~{kmKmErSize} \
      ~{kKKmErSizeContigsFa}
  >>>
}