version 1.0

task AddTradisTags {
  input {
    Boolean? bam_file_tradis
    File? output_bam_name
    Boolean? verbose_debugging_output
    String add_tags
  }
  command <<<
    add_tradis_tags \
      ~{add_tags} \
      ~{if (bam_file_tradis) then "-b" else ""} \
      ~{if (output_bam_name) then "-o" else ""} \
      ~{if (verbose_debugging_output) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file_tradis: ": bam file with tradis tags"
    output_bam_name: ": output BAM name (optional. default: <file>.tr.bam)"
    verbose_debugging_output: ": verbose debugging output"
    add_tags: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_bam_name = "${in_output_bam_name}"
  }
}