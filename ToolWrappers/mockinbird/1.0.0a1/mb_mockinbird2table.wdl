version 1.0

task Mbmockinbird2table {
  input {
    String? post_thresh
  }
  command <<<
    mb_mockinbird2table \
      ~{if defined(post_thresh) then ("--post_thresh " +  '"' + post_thresh + '"') else ""}
  >>>
  parameter_meta {
    post_thresh: ""
  }
  output {
    File out_stdout = stdout()
  }
}