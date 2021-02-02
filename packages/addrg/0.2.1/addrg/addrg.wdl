version 1.0

task Addrg {
  input {
    File file_dot_bam
    String rg_name
  }
  command <<<
    addrg \
      ~{file_dot_bam} \
      ~{rg_name}
  >>>
  parameter_meta {
    file_dot_bam: ""
    rg_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}