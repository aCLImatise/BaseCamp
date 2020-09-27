version 1.0

task Cpancover {
  input {
    Boolean? redo_cpan_cover_html
    Boolean? version
    Boolean? info
  }
  command <<<
    cpancover \
      ~{if (redo_cpan_cover_html) then "-redo_cpancover_html" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (info) then "-info" else ""}
  >>>
  parameter_meta {
    redo_cpan_cover_html: "-modules module_name\\n-results_dir /path/to/dir\\n-outputdir /path/to/dir\\n-outputfile filename.html\\n-report report_name\\n-generate_html\\n-compress_old_versions number_to_keep\\n-local\\n"
    version: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}