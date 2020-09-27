version 1.0

task MergeContigssh {
  input {
    String basename
    String nuc_mer
    File file
    String ref
    String? suffix
  }
  command <<<
    merge_contigs_sh \
      ~{basename} \
      ~{nuc_mer} \
      ~{file} \
      ~{ref} \
      ~{suffix}
  >>>
  parameter_meta {
    basename: ""
    nuc_mer: ""
    file: ""
    ref: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}