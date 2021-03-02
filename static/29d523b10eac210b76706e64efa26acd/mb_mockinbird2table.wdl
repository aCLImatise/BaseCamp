version 1.0

task Mbmockinbird2table {
  input {
    String? post_thresh
    String posterior_file
  }
  command <<<
    mb_mockinbird2table \
      ~{posterior_file} \
      ~{if defined(post_thresh) then ("--post_thresh " +  '"' + post_thresh + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    post_thresh: ""
    posterior_file: "output_file"
  }
  output {
    File out_stdout = stdout()
  }
}