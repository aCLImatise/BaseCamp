version 1.0

task MbbampostprocessInputBamFile {
  input {
    Int? min_length
    String mock_in_bird_bam_post_process
  }
  command <<<
    mb_bam_postprocess input_bam_file \
      ~{mock_in_bird_bam_post_process} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    min_length: ""
    mock_in_bird_bam_post_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}