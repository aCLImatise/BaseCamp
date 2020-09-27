version 1.0

task RemoveAnnotation {
  input {
    String fast_q
    String extracted_dot
  }
  command <<<
    remove_annotation \
      ~{fast_q} \
      ~{extracted_dot}
  >>>
  parameter_meta {
    fast_q: "One or more fastq files from which the annotation is to be"
    extracted_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}