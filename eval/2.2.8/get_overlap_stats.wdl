version 1.0

task GetOverlapStats.pl {
  input {
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? _verbose_mode
    Boolean? options
    Boolean? more_options
  }
  command <<<
    get_overlap_stats.pl \
      ~{true="-g" false="" input_files_gtf} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    input_files_gtf: ": Input files are in GTF format."
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    _verbose_mode: ": Verbose mode."
    options: ""
    more_options: ""
  }
}