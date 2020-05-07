version 1.0

task Map2gtfAnnotation.tlstAlignments.bam {
  input {
    String? outOutFileBam
  }
  command <<<
    map2gtf annotation.tlst alignments.bam \
      ~{outOutFileBam}
  >>>
}