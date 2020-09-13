version 1.0

task TwoBitDup {
  input {
    File? key_list
    Boolean? udc_dir
  }
  command <<<
    twoBitDup \
      ~{if defined(key_list) then ("-keyList " +  '"' + key_list + '"') else ""} \
      ~{if (udc_dir) then "-udcDir" else ""}
  >>>
  parameter_meta {
    key_list: "- file to write a key list, two columns: md5sum and sequenceName\\nNOTE: use of keyList is very time expensive for 2bit files\\nwith a large number of sequences (> 5,000).  Better to\\nuse a cluster run with the doIdKeys.pl automation script."
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
  }
  output {
    File out_stdout = stdout()
  }
}