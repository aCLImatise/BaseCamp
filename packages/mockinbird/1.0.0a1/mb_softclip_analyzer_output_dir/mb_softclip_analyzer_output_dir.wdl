version 1.0

task MbsoftclipanalyzerOutputDir {
  input {
    String? top_n
    String mb_soft_clip_analyzer
    String bam_file
    String output_dir
  }
  command <<<
    mb_softclip_analyzer output_dir \
      ~{mb_soft_clip_analyzer} \
      ~{bam_file} \
      ~{output_dir} \
      ~{if defined(top_n) then ("--top_n " +  '"' + top_n + '"') else ""}
  >>>
  parameter_meta {
    top_n: ""
    mb_soft_clip_analyzer: ""
    bam_file: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}