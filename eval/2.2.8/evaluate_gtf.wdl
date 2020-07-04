version 1.0

task EvaluateGtf.pl {
  input {
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? evaluate_alternative_faster
    Boolean? _verbose_mode
    Boolean? options
    Boolean? more_options
  }
  command <<<
    evaluate_gtf.pl \
      ~{true="-g" false="" input_files_gtf} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-A" false="" evaluate_alternative_faster} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    evaluate_alternative_faster: ": Do not evaluate for alternative splicing events. (Faster)"
    _verbose_mode: ": Verbose mode"
    options: ""
    more_options: ""
  }
}