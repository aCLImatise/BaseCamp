version 1.0

task GetOverlapStatspl {
  input {
    Int? specify_overlap_mode
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? _verbose_mode
    Boolean? more_options
    Boolean? options
  }
  command <<<
    get_overlap_stats_pl \
      ~{if defined(specify_overlap_mode) then ("-m " +  '"' + specify_overlap_mode + '"') else ""} \
      ~{if (input_files_gtf) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_overlap_mode: ": Specify overlap mode.  Must be a number selected from the list below.\\nDefault is mode 1."
    input_files_gtf: ": Input files are in GTF format."
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    _verbose_mode: ": Verbose mode."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}