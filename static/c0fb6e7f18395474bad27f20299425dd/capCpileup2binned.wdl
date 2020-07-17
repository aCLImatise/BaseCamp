version 1.0

task CapCpileup2binned {
  input {
    Boolean? pileupfile_input_pileup
    Boolean? outfile_file_name
    Boolean? chromsizes_file_name
    Boolean? target_name_target
    Boolean? bin_wind_pileup
    Boolean? totalreads_pileup_will
  }
  command <<<
    capCpileup2binned \
      ~{true="-i" false="" pileupfile_input_pileup} \
      ~{true="-o" false="" outfile_file_name} \
      ~{true="-c" false="" chromsizes_file_name} \
      ~{true="-t" false="" target_name_target} \
      ~{true="-b" false="" bin_wind_pileup} \
      ~{true="-n" false="" totalreads_pileup_will}
  >>>
  parameter_meta {
    pileupfile_input_pileup: "pileupfile  is the input pile-up file name"
    outfile_file_name: "outfile     is the file name for the output bedGraph"
    chromsizes_file_name: "chromsizes  is the file name for the list of chromosome sizes"
    target_name_target: "target      is the name of the target"
    bin_wind_pileup: "bin wind    pile-up will be up into sliding window bins with step size of 'bin' and window width of 'wind'"
    totalreads_pileup_will: "totalreads  pile-up will be normalized to reads per million genome wide; requires total number of reads (available from capC main process report file; includes both inter and intra chromosomal)."
  }
}