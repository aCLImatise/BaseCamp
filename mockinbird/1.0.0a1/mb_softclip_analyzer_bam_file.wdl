version 1.0

task MbSoftclipAnalyzerBamFile {
  input {
    String? top_n
    String output_dir
  }
  command <<<
    mb-softclip-analyzer bam_file \
      ~{output_dir} \
      ~{if defined(top_n) then ("--top_n " +  '"' + top_n + '"') else ""}
  >>>
  parameter_meta {
    top_n: ""
    output_dir: ""
  }
}