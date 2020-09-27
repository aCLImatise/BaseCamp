version 1.0

task FlyesamtoolsIndex {
  input {
    Boolean? generate_baiformat_index
    Boolean? generate_csiformat_index
    Int? set_minimum_size
    Int? at
    Boolean? bc
    String sam_tools
    String index
    String in_dot_bam
    String? out_dot_index
  }
  command <<<
    flye_samtools index \
      ~{sam_tools} \
      ~{index} \
      ~{in_dot_bam} \
      ~{out_dot_index} \
      ~{if (generate_baiformat_index) then "-b" else ""} \
      ~{if (generate_csiformat_index) then "-c" else ""} \
      ~{if defined(set_minimum_size) then ("-m " +  '"' + set_minimum_size + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if (bc) then "-bc" else ""}
  >>>
  parameter_meta {
    generate_baiformat_index: "Generate BAI-format index for BAM files [default]"
    generate_csiformat_index: "Generate CSI-format index for BAM files"
    set_minimum_size: "Set minimum interval size for CSI indices to 2^INT [14]"
    at: "Sets the number of threads [none]"
    bc: ""
    sam_tools: ""
    index: ""
    in_dot_bam: ""
    out_dot_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}