version 1.0

task RemoveAnnotationFASTQ {
  input {
    Boolean fastFastQAnnotation
  }
  command <<<
    remove_annotation FASTQ \
      ~{true="- FASTQ_annotation" false="" fastFastQAnnotation}
  >>>
}