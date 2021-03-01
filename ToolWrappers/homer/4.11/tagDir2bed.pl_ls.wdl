version 1.0

task TagDir2bedplLs {
  input {
    Boolean? len
    Boolean? separate
    Int tag_dir_two_bed_do_tpl
    Directory tag_directory
  }
  command <<<
    tagDir2bed_pl ls \
      ~{tag_dir_two_bed_do_tpl} \
      ~{tag_directory} \
      ~{if (len) then "-len" else ""} \
      ~{if (separate) then "-separate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    len: "<#> (read length to report, default: given sizes in tags.tsv file)"
    separate: "(report separate BED reads if there are multiple reads per position)"
    tag_dir_two_bed_do_tpl: ""
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}