version 1.0

task TwoBitDup {
  input {
    File? key_list
    Boolean? udc_dir
    File file_dot_two_bit
  }
  command <<<
    twoBitDup \
      ~{file_dot_two_bit} \
      ~{if defined(key_list) then ("-keyList " +  '"' + key_list + '"') else ""} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    key_list: "- file to write a key list, two columns: md5sum and sequenceName NOTE: use of keyList is very time expensive for 2bit files with a large number of sequences (> 5,000).  Better to use a cluster run with the doIdKeys.pl automation script."
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    file_dot_two_bit: ""
  }
}