version 1.0

task EvaluateGtfpl {
  input {
    Boolean? input_files_gtf
    Boolean? quick_load_file
    Boolean? evaluate_alternative_faster
    Boolean? _verbose_mode
    Boolean? more_options
    Boolean? options
  }
  command <<<
    evaluate_gtf_pl \
      ~{if (input_files_gtf) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (evaluate_alternative_faster) then "-A" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_files_gtf: ": Input files are gtf not lists"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    evaluate_alternative_faster: ": Do not evaluate for alternative splicing events. (Faster)"
    _verbose_mode: ": Verbose mode"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}