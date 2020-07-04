version 1.0

task AlignmentToolsAlignmentMerger {
  input {
    String java
    String alignment_merger
    String align_file_dir
    String outfile_dot_fast_a
    String? mask_file
  }
  command <<<
    AlignmentTools alignment-merger \
      ~{java} \
      ~{alignment_merger} \
      ~{align_file_dir} \
      ~{outfile_dot_fast_a} \
      ~{mask_file}
  >>>
  parameter_meta {
    java: ""
    alignment_merger: ""
    align_file_dir: ""
    outfile_dot_fast_a: ""
    mask_file: ""
  }
}