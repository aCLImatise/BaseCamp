version 1.0

task FilterComponentspyMinlength {
  input {
    String filter_components_do_tpy
    String in_file
    String outfile
    String minlength
  }
  command <<<
    filter_components_py minlength \
      ~{filter_components_do_tpy} \
      ~{in_file} \
      ~{outfile} \
      ~{minlength}
  >>>
  parameter_meta {
    filter_components_do_tpy: ""
    in_file: ""
    outfile: ""
    minlength: ""
  }
  output {
    File out_stdout = stdout()
  }
}