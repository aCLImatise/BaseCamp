version 1.0

task Minidot {
  input {
    Int? min_match_length
    Float? min_identity
    Int? min_span
    Int? image_width
    Int? font_size
    Boolean? do_print_labels
    Boolean? try_put_hits
    String in_dot_paf
  }
  command <<<
    minidot \
      ~{in_dot_paf} \
      ~{if defined(min_match_length) then ("-m " +  '"' + min_match_length + '"') else ""} \
      ~{if defined(min_identity) then ("-i " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_span) then ("-s " +  '"' + min_span + '"') else ""} \
      ~{if defined(image_width) then ("-w " +  '"' + image_width + '"') else ""} \
      ~{if defined(font_size) then ("-f " +  '"' + font_size + '"') else ""} \
      ~{if (do_print_labels) then "-L" else ""} \
      ~{if (try_put_hits) then "-D" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_match_length: "min match length [100]"
    min_identity: "min identity [0.10]"
    min_span: "min span [1000]"
    image_width: "image width [600]"
    font_size: "font size [11]"
    do_print_labels: "don't print labels"
    try_put_hits: "don't try to put hits onto the diagonal"
    in_dot_paf: ""
  }
  output {
    File out_stdout = stdout()
  }
}