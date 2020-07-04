version 1.0

task MakeIntronLenghtVsPerformanceGraph.pl {
  input {
    Int? sets_minimum_start
    Int? sets_maximum_end
    String? sets_bin_size
    String? sets_number_used
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? _verbose_mode
    Boolean? options
    Boolean? more_options
  }
  command <<<
    make_intron_lenght_vs_performance_graph.pl \
      ~{if defined(sets_minimum_start) then ("-m " +  '"' + sets_minimum_start + '"') else ""} \
      ~{if defined(sets_maximum_end) then ("-x " +  '"' + sets_maximum_end + '"') else ""} \
      ~{if defined(sets_bin_size) then ("-b " +  '"' + sets_bin_size + '"') else ""} \
      ~{if defined(sets_number_used) then ("-B " +  '"' + sets_number_used + '"') else ""} \
      ~{true="-g" false="" input_files_gtf} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    sets_minimum_start: ": Sets the minimum bin start [default: min intron length];"
    sets_maximum_end: ": Sets the maximum bin end [default: max intron length];"
    sets_bin_size: ": Sets the bin size [default: 1/10 length range]  Cannot be used with -B"
    sets_number_used: ": Sets the number of bins [default: 10]  Cannot be used with -b"
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    _verbose_mode: ": Verbose mode"
    options: ""
    more_options: ""
  }
}