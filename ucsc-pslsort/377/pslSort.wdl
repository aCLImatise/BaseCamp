version 1.0

task PslSort {
  input {
    Boolean? no_head
    String? verbose
    String dirs
    String? one_vertical_line_two
    String outfile
    String tempdir
    String in_dir
  }
  command <<<
    pslSort \
      ~{dirs} \
      ~{one_vertical_line_two} \
      ~{outfile} \
      ~{tempdir} \
      ~{in_dir} \
      ~{true="-nohead" false="" no_head} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    no_head: "Do not write psl header."
    verbose: "Set verbosity level, higher for more output. Default is 1."
    dirs: ""
    one_vertical_line_two: ""
    outfile: ""
    tempdir: ""
    in_dir: ""
  }
}