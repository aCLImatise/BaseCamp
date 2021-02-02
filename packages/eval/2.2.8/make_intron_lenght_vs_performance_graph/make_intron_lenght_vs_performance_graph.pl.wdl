version 1.0

task MakeIntronLenghtVsPerformanceGraphpl {
  input {
    Int? sets_minimum_start
    Int? sets_maximum_end
    Int? sets_size_used
    Int? sets_number_used
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? _verbose_mode
    Boolean? more_options
    Boolean? options
  }
  command <<<
    make_intron_lenght_vs_performance_graph_pl \
      ~{if defined(sets_minimum_start) then ("-m " +  '"' + sets_minimum_start + '"') else ""} \
      ~{if defined(sets_maximum_end) then ("-x " +  '"' + sets_maximum_end + '"') else ""} \
      ~{if defined(sets_size_used) then ("-b " +  '"' + sets_size_used + '"') else ""} \
      ~{if defined(sets_number_used) then ("-B " +  '"' + sets_number_used + '"') else ""} \
      ~{if (input_files_gtf) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    sets_minimum_start: ": Sets the minimum bin start [default: min intron length];"
    sets_maximum_end: ": Sets the maximum bin end [default: max intron length];"
    sets_size_used: ": Sets the bin size [default: 1/10 length range]\\nCannot be used with -B"
    sets_number_used: ": Sets the number of bins [default: 10]\\nCannot be used with -b"
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    _verbose_mode: ": Verbose mode"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}