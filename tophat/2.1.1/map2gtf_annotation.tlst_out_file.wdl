version 1.0

task Map2gtfAnnotation.tlstOutFile.bam {
  input {
    String? alignmentsAlignmentsBam
    String? outOutFileBam
  }
  command <<<
    map2gtf annotation.tlst out_file.bam \
      ~{alignmentsAlignmentsBam} \
      ~{outOutFileBam}
  >>>
}