version 1.0

task Cpancover {
  input {
    Boolean? redo_cpan_cover_html
    String? modules
    Boolean? results_dir
    Boolean? output_dir
    File? output_file
    String? report
    Boolean? generate_html
    Int? compress_old_versions
    Boolean? local
    Boolean? version
    Boolean? info
  }
  command <<<
    cpancover \
      ~{if (redo_cpan_cover_html) then "-redo_cpancover_html" else ""} \
      ~{if defined(modules) then ("-modules " +  '"' + modules + '"') else ""} \
      ~{if (results_dir) then "-results_dir" else ""} \
      ~{if (output_dir) then "-outputdir" else ""} \
      ~{if defined(output_file) then ("-outputfile " +  '"' + output_file + '"') else ""} \
      ~{if defined(report) then ("-report " +  '"' + report + '"') else ""} \
      ~{if (generate_html) then "-generate_html" else ""} \
      ~{if defined(compress_old_versions) then ("-compress_old_versions " +  '"' + compress_old_versions + '"') else ""} \
      ~{if (local) then "-local" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (info) then "-info" else ""}
  >>>
  parameter_meta {
    redo_cpan_cover_html: ""
    modules: ""
    results_dir: "/path/to/dir"
    output_dir: "/path/to/dir"
    output_file: ""
    report: ""
    generate_html: ""
    compress_old_versions: ""
    local: ""
    version: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}