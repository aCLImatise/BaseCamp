version 1.0

task CheckTradisTags {
  input {
    Boolean? bam_file_tradis
    String check_tags
  }
  command <<<
    check_tradis_tags \
      ~{check_tags} \
      ~{if (bam_file_tradis) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file_tradis: ": bam file with tradis tags"
    check_tags: ""
  }
  output {
    File out_stdout = stdout()
  }
}