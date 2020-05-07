version 1.0

task Map2gtfOutFile.bam {
  input {
    String? annotationAnnotationTlsT
    String? alignmentsAlignmentsBam
    String? outOutFileBam
  }
  command <<<
    map2gtf out_file.bam \
      ~{annotationAnnotationTlsT} \
      ~{alignmentsAlignmentsBam} \
      ~{outOutFileBam}
  >>>
}