version 1.0

task MbsoftclipanalyzerBamFile {
  input {
    String? top_n
    String output_dir
  }
  command <<<
    mb_softclip_analyzer bam_file \
      ~{output_dir} \
      ~{if defined(top_n) then ("--top_n " +  '"' + top_n + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    top_n: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}