version 1.0

task MegahitToolkitContig2fastg {
  input {
    String? contig2fastgContig2fastg
    String? kmKmErSize
    String? kKKmErSizeContigsFa
  }
  command <<<
    megahit_toolkit contig2fastg \
      ~{contig2fastgContig2fastg} \
      ~{kmKmErSize} \
      ~{kKKmErSizeContigsFa}
  >>>
}