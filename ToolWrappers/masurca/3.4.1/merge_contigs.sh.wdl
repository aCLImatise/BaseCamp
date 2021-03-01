version 1.0

task MergeContigssh {
  input {
    String basename
    String nuc_mer
    File var_file
    String ref
    String? suffix
  }
  command <<<
    merge_contigs_sh \
      ~{basename} \
      ~{nuc_mer} \
      ~{var_file} \
      ~{ref} \
      ~{suffix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basename: ""
    nuc_mer: ""
    var_file: ""
    ref: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}