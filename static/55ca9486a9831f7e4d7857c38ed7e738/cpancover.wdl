version 1.0

task Cpancover {
  input {
    File? redo_cpan_cover_html
    Boolean? output_dir
    Boolean? version
    Boolean? info
  }
  command <<<
    cpancover \
      ~{if defined(redo_cpan_cover_html) then ("-redo_cpancover_html " +  '"' + redo_cpan_cover_html + '"') else ""} \
      ~{if (output_dir) then "-outputdir" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (info) then "-info" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    redo_cpan_cover_html: "/path/to/dir"
    output_dir: "/path/to/dir"
    version: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}