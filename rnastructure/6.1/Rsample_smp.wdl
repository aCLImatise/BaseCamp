version 1.0

task RsampleSmp {
  input {
    String r_sample
    String seq_file
    String shape_file
    String pfs_file
  }
  command <<<
    Rsample-smp \
      ~{r_sample} \
      ~{seq_file} \
      ~{shape_file} \
      ~{pfs_file}
  >>>
  parameter_meta {
    r_sample: ""
    seq_file: ""
    shape_file: ""
    pfs_file: ""
  }
}