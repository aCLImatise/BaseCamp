version 1.0

task MbbampostprocessOutputDirectory {
  input {
    Int? min_length
    String mock_in_bird_bam_post_process
  }
  command <<<
    mb_bam_postprocess output_directory \
      ~{mock_in_bird_bam_post_process} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_length: ""
    mock_in_bird_bam_post_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}