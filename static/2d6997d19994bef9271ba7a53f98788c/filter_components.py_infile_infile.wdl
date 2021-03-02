version 1.0

task FilterComponentspyInfileInfile {
  input {
    String filter_components_do_tpy
    String in_file
    String outfile
    String minlength
  }
  command <<<
    filter_components_py infile infile \
      ~{filter_components_do_tpy} \
      ~{in_file} \
      ~{outfile} \
      ~{minlength}
  >>>
  runtime {
    docker: "None"
  }
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