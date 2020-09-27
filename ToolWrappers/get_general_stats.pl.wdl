version 1.0

task GetGeneralStatspl {
  input {
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? stats_alternative_splices
    Boolean? _verbose_mode
    Boolean? more_options
    Boolean? options
  }
  command <<<
    get_general_stats_pl \
      ~{if (input_files_gtf) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (stats_alternative_splices) then "-A" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    stats_alternative_splices: ": Do not get stats for alternative splices. (Faster)"
    _verbose_mode: ": Verbose mode"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}