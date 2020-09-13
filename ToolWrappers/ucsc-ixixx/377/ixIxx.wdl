version 1.0

task IxIxx {
  input {
    Int? prefix_size
    Int? binsize
    String in_dot_text
    String out_do_tix
  }
  command <<<
    ixIxx \
      ~{in_dot_text} \
      ~{out_do_tix} \
      ~{if defined(prefix_size) then ("-prefixSize " +  '"' + prefix_size + '"') else ""} \
      ~{if defined(binsize) then ("-binSize " +  '"' + binsize + '"') else ""}
  >>>
  parameter_meta {
    prefix_size: "Size of prefix to index on in ixx.  Default is 5."
    binsize: "Size of bins in ixx.  Default is 64k."
    in_dot_text: ""
    out_do_tix: ""
  }
  output {
    File out_stdout = stdout()
  }
}