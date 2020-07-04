version 1.0

task PslPartition {
  input {
    String psl_file
    String outdir
  }
  command <<<
    pslPartition \
      ~{psl_file} \
      ~{outdir}
  >>>
  parameter_meta {
    psl_file: ""
    outdir: ""
  }
}