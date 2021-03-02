version 1.0

task SamtoolsIndex {
  input {
    Boolean? generate_baiformat_index
    Boolean? generate_csiformat_index
    Int? set_minimum_interval
    Int? at
    Boolean? bc
    String in_dot_bam
    String? out_dot_index
  }
  command <<<
    samtools index \
      ~{in_dot_bam} \
      ~{out_dot_index} \
      ~{if (generate_baiformat_index) then "-b" else ""} \
      ~{if (generate_csiformat_index) then "-c" else ""} \
      ~{if defined(set_minimum_interval) then ("-m " +  '"' + set_minimum_interval + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if (bc) then "-bc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    generate_baiformat_index: "Generate BAI-format index for BAM files [default]"
    generate_csiformat_index: "Generate CSI-format index for BAM files"
    set_minimum_interval: "Set minimum interval size for CSI indices to 2^INT [14]"
    at: "Sets the number of threads [none]"
    bc: ""
    in_dot_bam: ""
    out_dot_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}