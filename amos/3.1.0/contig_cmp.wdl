version 1.0

task Contigcmp {
  input {
    File a_file
    File b_file
  }
  command <<<
    contig_cmp \
      ~{a_file} \
      ~{b_file}
  >>>
  parameter_meta {
    a_file: ""
    b_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}