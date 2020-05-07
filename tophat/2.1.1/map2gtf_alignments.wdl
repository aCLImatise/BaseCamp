version 1.0

task Map2gtfAlignments.bam {
  input {
    String? annotationAnnotationTlsT
    String? alignmentsAlignmentsBam
    String? outOutFileBam
  }
  command <<<
    map2gtf alignments.bam \
      ~{annotationAnnotationTlsT} \
      ~{alignmentsAlignmentsBam} \
      ~{outOutFileBam}
  >>>
}