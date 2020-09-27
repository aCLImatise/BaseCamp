version 1.0

task Bamtools241Index {
  input {
    File? in
    Boolean? bti
    String bam_tools
    String index
  }
  command <<<
    bamtools_2_4_1 index \
      ~{bam_tools} \
      ~{index} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (bti) then "-bti" else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    bti: "create (non-standard) BamTools\\nindex file (*.bti). Default behavior is to\\ncreate standard BAM index (*.bai)"
    bam_tools: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}