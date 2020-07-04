version 1.0

task GetGeneralStats.pl {
  input {
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? stats_alternative_splices
    Boolean? _verbose_mode
    Boolean? options
    Boolean? more_options
  }
  command <<<
    get_general_stats.pl \
      ~{true="-g" false="" input_files_gtf} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-A" false="" stats_alternative_splices} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    stats_alternative_splices: ": Do not get stats for alternative splices. (Faster)"
    _verbose_mode: ": Verbose mode"
    options: ""
    more_options: ""
  }
}