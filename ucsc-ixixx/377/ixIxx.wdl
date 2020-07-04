version 1.0

task IxIxx {
  input {
    String? prefix_size
    String? binsize
    String in_dot_text
    String out_do_tix
    String out_do_tixx
  }
  command <<<
    ixIxx \
      ~{in_dot_text} \
      ~{out_do_tix} \
      ~{out_do_tixx} \
      ~{if defined(prefix_size) then ("-prefixSize " +  '"' + prefix_size + '"') else ""} \
      ~{if defined(binsize) then ("-binSize " +  '"' + binsize + '"') else ""}
  >>>
  parameter_meta {
    prefix_size: "Size of prefix to index on in ixx.  Default is 5."
    binsize: "Size of bins in ixx.  Default is 64k."
    in_dot_text: ""
    out_do_tix: ""
    out_do_tixx: ""
  }
}